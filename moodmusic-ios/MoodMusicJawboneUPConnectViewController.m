//
//  MoodMusicJawboneUPConnectViewController.m
//  moodmusic-ios
//
//  Created by Dan Mundy on 10/6/13.
//  Copyright (c) 2013 wat. All rights reserved.
//

#import "MoodMusicJawboneUPConnectViewController.h"
#import "MoodMusicSession.h"
#import <SAMWebViewController.h>
#import <AFNetworking/AFHTTPRequestOperationManager.h>

@interface MoodMusicJawboneUPConnectViewController ()

@end

@implementation MoodMusicJawboneUPConnectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)connect:(id)sender {
    [[MoodMusicSession sharedSession] fetchIDWithCallback:^{
        [self auth];
    }];
}

- (void)auth {
    if ([[MoodMusicSession sharedSession] userID] > 0) {
        SAMWebViewController *authVC = [[SAMWebViewController alloc] init];
        [[authVC webView] setDelegate:self];
        
        [self presentViewController:authVC animated:TRUE completion:^{
            [[authVC webView] loadURLString:[NSString stringWithFormat:@"%@%d", @"http://69.164.221.75:3000/jawbone/auth/", [[MoodMusicSession sharedSession] userID]]];
        }];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
