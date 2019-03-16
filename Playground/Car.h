//
//  Car.h
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (nonatomic) NSString* model;
@property (readonly) double odometer;

-(void)startEngine;
-(void)drive;
-(void) turnLeft;
-(void) turnRight;
-(void) driveFromDuration:(double)duration withVariableSpeed:(double (^)(double time))speedFunction steps:(int)numSteps;

@end

//extensions:- this are like private methods
@interface Car()
-(BOOL) engineIsWorking;

@end

NS_ASSUME_NONNULL_END
