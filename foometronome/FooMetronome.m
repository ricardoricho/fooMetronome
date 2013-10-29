//
//  FooMetronome.m
//  foometronome
//
//  Created by Ricardo on 10/28/13.
//  Copyright (c) 2013 Ricardo. All rights reserved.
//

#import "FooMetronome.h"

@implementation FooMetronome


-(void) togglePlay{
    self.play = !self.play;
}

-(void) startPlaying{
    self.play = true;
}

-(void) stopPlaying{
    self.play = false;
}


@end
