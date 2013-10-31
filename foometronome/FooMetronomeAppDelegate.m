//
//  FooMetronomeAppDelegate.m
//  foometronome
//
//  Created by Ricardo on 10/28/13.
//  Copyright (c) 2013 Ricardo. All rights reserved.
//

#import "FooMetronomeAppDelegate.h"
#import "FooMetronome.h"

@implementation FooMetronomeAppDelegate

@synthesize textField;
@synthesize startStop;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    FooMetronome *aMetronome = [[FooMetronome alloc] init];
    [self setMetronome:aMetronome];
    [self updateUserInterface];
    //self.metronome = aMetronome
    
}

- (IBAction)toggleMetronome:(id)sender{
    [self.metronome togglePlay];
    [self updateUserInterface];
    NSLog(@"Toggle metronome %d", self.metronome.play);
}

- (IBAction)setBpmFromTextField:(id)sender {
    int newBpm = [sender intValue];
    [self.metronome updateBeat: newBpm];
    [self updateUserInterface];
}

- (void) updateStartStopButton{
    if([self.metronome play]){
        [self.startStop setTitle:@"Stop"];
    }else{
        [self.startStop setTitle:@"Start"];
    }
}

-(void)updateUserInterface {
    int bpm = [self.metronome bpm];
    [self.textField setIntegerValue:bpm];
    [self updateStartStopButton];
}

@end
