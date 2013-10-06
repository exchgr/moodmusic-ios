//
//  MoodMusicAppDelegate.h
//  moodmusic-ios
//
//  Created by Dan Mundy on 10/5/13.
//  Copyright (c) 2013 wat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoodMusicAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
