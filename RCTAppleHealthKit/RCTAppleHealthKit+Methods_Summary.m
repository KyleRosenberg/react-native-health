//
//  RCTAppleHealthKit+Methods_Workout.m
//  RCTAppleHealthKit
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit+Methods_Summary.h"
#import "RCTAppleHealthKit+Queries.h"
#import "RCTAppleHealthKit+Utils.h"
#import <React/RCTLog.h>

@implementation RCTAppleHealthKit (Summary)

-(void)summary_getActiveEnergyBurnedGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    RCTLog(@"Start date");
    NSDate *startDate = [RCTAppleHealthKit dateFromOptions:input key:@"startDate" withDefault:nil];
    RCTLog(@"End date");
    NSDate *endDate = [RCTAppleHealthKit dateFromOptions:input key:@"endDate" withDefault:[NSDate date]];

    void (^completion)(NSArray *results, NSError *error);

    completion = ^(NSArray<HKActivitySummary *> *results, NSError *error) {
        if (results){

            callback(@[[NSNull null], results]);

            return;
        } else {
            NSLog(@"error getting samples: %@", error);
            callback(@[RCTMakeError(@"error getting goals", error, nil)]);

            return;
        }
    };

    [self fetchActivitySummary:startDate endDate:endDate completion:completion];
}

-(void)summary_getAppleExerciseTimeGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    NSDate *startDate = [RCTAppleHealthKit dateFromOptions:input key:@"startDate" withDefault:nil];
    NSDate *endDate = [RCTAppleHealthKit dateFromOptions:input key:@"endDate" withDefault:[NSDate date]];
    
    void (^completion)(NSArray *results, NSError *error);

    completion = ^(NSArray<HKActivitySummary *> *results, NSError *error) {
        if (results){
            
            callback(@[[NSNull null], [results valueForKey:@"appleExerciseTimeGoal"]]);

            return;
        } else {
            NSLog(@"error getting samples: %@", error);
            callback(@[RCTMakeError(@"error getting goals", error, nil)]);

            return;
        }
    };
    
    [self fetchActivitySummary:startDate endDate:endDate completion:completion];
}

-(void)summary_getAppleStandTimeGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback
{
    NSDate *startDate = [RCTAppleHealthKit dateFromOptions:input key:@"startDate" withDefault:nil];
    NSDate *endDate = [RCTAppleHealthKit dateFromOptions:input key:@"endDate" withDefault:[NSDate date]];
    
    void (^completion)(NSArray *results, NSError *error);

    completion = ^(NSArray<HKActivitySummary *> *results, NSError *error) {
        if (results){
            
            callback(@[[NSNull null], [results valueForKey:@"appleStandHoursGoal"]]);

            return;
        } else {
            NSLog(@"error getting samples: %@", error);
            callback(@[RCTMakeError(@"error getting goals", error, nil)]);

            return;
        }
    };
    
    [self fetchActivitySummary:startDate endDate:endDate completion:completion];
}

@end
