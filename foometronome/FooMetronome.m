//
//  FooMetronome.m
//  foometronome
//
//  Created by Ricardo on 10/28/13.
//  Copyright (c) 2013 Ricardo. All rights reserved.
//

#import "FooMetronome.h"

@implementation FooMetronome

-(id) init{
    if (self = [super init]){
        self.sound = [NSSound soundNamed:@"Metronome"];
        self.bpm = 30;
        self.play = false;
    }
    return self;
}

-(NSTimer*) initializeTimer{
    float interval = 60 / (float)self.bpm;
    NSLog(@"interval %f", interval);
    return [NSTimer scheduledTimerWithTimeInterval:interval
                                            target:self
                                          selector:@selector(continuePlaying)
                                          userInfo:nil
                                           repeats:true];
}

-(void) updateBeat:(int)newBpm{
    bool wasPlaying = self.play;
    [self setBpm:newBpm];
    if (wasPlaying){
        [self startPlaying];
    }
}

-(void) togglePlay{
    if (self.play){
        [self stopPlaying];
    }else{
        [self startPlaying];
    }
}

-(void) startPlaying{
    if(self.timer != nil){
        [self stopPlaying];
    }
    self.play = true;
    self.timer = [self initializeTimer];
}

-(void) stopPlaying{
    self.play = false;
    [self.timer invalidate];
    self.timer = nil;
}

-(void) continuePlaying{
    [self.sound play];
}


@end
