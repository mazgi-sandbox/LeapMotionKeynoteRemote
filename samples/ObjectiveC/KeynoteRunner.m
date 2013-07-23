//
//  KeynoteRunner.m
//  SampleObjectiveC
//
//  Created by matsuki hidenori on 7/23/13.
//  Copyright (c) 2013 Leap Motion. All rights reserved.
//

#import "KeynoteRunner.h"

@interface NSObject (KeynoteRunnerScript)
- (void)startFrom;
- (void)stopSlideshow;
- (void)showNext;
- (void)showPrevious;
@end

@interface KeynoteRunner ()
@property (nonatomic, retain) id keynoteRunner;
@end

@implementation KeynoteRunner

- (id)init
{
    self = [super init];
    if (self) {
        // Get Talker class
        Class KeynoteRunnerScript;
        KeynoteRunnerScript = NSClassFromString(@"KeynoteRunnerScript");
        if (!KeynoteRunnerScript) {
            NSLog(@"Failed to get class.");

            return nil;
        }
        self.keynoteRunner = [[KeynoteRunnerScript alloc]init];
    }
    return self;
}

- (void)dealloc
{
    self.keynoteRunner = nil;
}

- (IBAction)startFrom:(id)sender
{
    [self.keynoteRunner startFrom];
}

- (IBAction)stopSlideshow:(id)sender
{
    [self.keynoteRunner stopSlideshow];
}

- (IBAction)showNext:(id)sender
{
    NSLog(@"showNext!!!");
    [self.keynoteRunner showNext];
}

- (IBAction)showPrevious:(id)sender
{
    NSLog(@"showPrevious!!!");
    [self.keynoteRunner showPrevious];
}

@end
