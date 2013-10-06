//
//  MoodMusicSession.m
//  moodmusic-ios
//
//  Created by Dan Mundy on 10/6/13.
//  Copyright (c) 2013 wat. All rights reserved.
//

#import "MoodMusicSession.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>

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

- (void)fetchID {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:@"http://69.164.221.75:3000/user" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self setUserID:[[responseObject objectForKey:@"id"] intValue]];
        NSLog(@"%d", [self userID]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];
    

}

@end
