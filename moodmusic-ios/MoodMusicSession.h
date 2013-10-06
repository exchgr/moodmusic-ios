//
//  MoodMusicSession.h
//  moodmusic-ios
//
//  Created by Dan Mundy on 10/6/13.
//  Copyright (c) 2013 wat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoodMusicSession : NSObject

@property (nonatomic) NSInteger userID;

+ (id)sharedSession;

@end
