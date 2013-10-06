//
//  MoodMusicSession.m
//  moodmusic-ios
//
//  Created by Dan Mundy on 10/6/13.
//  Copyright (c) 2013 wat. All rights reserved.
//

#import "MoodMusicSession.h"

@implementation MoodMusicSession

+ (id)sharedSession {
    static MoodMusicSession *sharedSession = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSession = [[self alloc] init];
    });
    
    return sharedSession;
}

- (id)init {
    if (self = [super init]) {
        [self setUserID:0];
    }
    
    return self;
}

@end
