//
//  FooMetronomeAppDelegate.h
//  foometronome
//
//  Created by Ricardo on 10/28/13.
//  Copyright (c) 2013 Ricardo. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class FooMetronome;

@interface FooMetronomeAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *textField;

@property (weak) IBOutlet NSButton *startStop;

@property (strong) FooMetronome *metronome;

- (IBAction)setBpmFromTextField:(id)sender;
- (IBAction)toggleMetronome:(id)sender;


- (void)updateUserInterface;
- (void)updateStartStopButton;


@end
