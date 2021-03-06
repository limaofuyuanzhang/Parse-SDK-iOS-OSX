//
//  ViewController.m
//  ParseLearn
//
//  Created by bmob-LT on 16/4/1.
//  Copyright © 2016年 Parse Inc. All rights reserved.
//

#import "ViewController.h"
#import "Parse.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)add:(id)sender {
    PFObject *gameScore = [PFObject objectWithClassName:@"GameScore"];
    gameScore[@"score"] = @1337;
    gameScore[@"playerName"] = @"礼貌";
    gameScore[@"cheatMode"] = @NO;
    [gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
            NSLog(@"succeeded");
        } else {
            // There was a problem, check error.description
            NSLog(@"%@",error);
        }
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
