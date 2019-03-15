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



@property (nonatomic) BOOL running;
@property (nonatomic) NSString* modelName;
@property double mileage;
@property double speed;
//Accessors
-(BOOL) isRunning;
-(void) setRunning:(BOOL)running;
- (NSString *) model;
-(void) setModel:(NSString *)model;

//Calculate values
-(double)maximumSpeed;
-(double)maximumSpeedUsingLocaale:(NSLocale *)locale;

//Action methods
-(void)startEngine;
-(void)driveForDistance:(double)theDistance;
-(void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination;
-(void)turnByAngle:(double)theAngle;

//Error handling methods
-(BOOL) loadPassenger:(id)aPassenger error:(NSError *)error;

//constructor methods
-(id)initWithModel:(NSString *)aModel;
-(id)initWithModel:(NSString *)aModel mileage:(double)theMileage;

//comparsion methods
-(BOOL) isEqualToCar:(Car *)anotherCar;
-(Car *)fasterCar:(Car *)anotherCar;
-(Car *)slowerCar:(Car *)anotherCar;

//Factory methods
+(Car *)car;
+(Car *)carWithModel:(NSString *)aModel;
+(Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage;

//Singleton methods
+(Car *)sharedCar;


@end

NS_ASSUME_NONNULL_END
