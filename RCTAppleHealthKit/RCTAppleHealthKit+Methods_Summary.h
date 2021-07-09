//
//  RCTAppleHealthKit+Summary.h
//  RCTAppleHealthKit
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#import "RCTAppleHealthKit.h"

@interface RCTAppleHealthKit (Methods_Summary)

- (void)summary_getActiveEnergyBurnedGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)summary_getAppleExerciseTimeGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)summary_getAppleStandTimeGoal:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;

@end
