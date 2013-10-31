//
//  FooMetronome.h
//  foometronome
//
//  Created by Ricardo on 10/28/13.
//  Copyright (c) 2013 Ricardo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FooMetronome : NSObject

@property (assign) int bpm;
@property (assign) bool play;
@property (assign) NSSound *sound;
@property (assign) NSTimer *timer;

-(void) updateBeat:(int)newBpm;
-(void) togglePlay;
-(void) startPlaying;
-(void) stopPlaying;
@end
