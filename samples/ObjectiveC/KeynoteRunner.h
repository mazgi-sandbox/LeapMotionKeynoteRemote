//
//  KeynoteRunner.h
//  SampleObjectiveC
//
//  Created by matsuki hidenori on 7/23/13.
//  Copyright (c) 2013 Leap Motion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeynoteRunner : NSObject

- (IBAction)startFrom:(id)sender;
- (IBAction)stopSlideshow:(id)sender;
- (IBAction)showNext:(id)sender;
- (IBAction)showPrevious:(id)sender;

@end
