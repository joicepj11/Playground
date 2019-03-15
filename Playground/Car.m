//
//  Car.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import "Car.h"

@implementation Car

-(BOOL) isRunning{
    return _running;
}

-(void) setRunning:(BOOL)running{
    _running = running;
}

- (NSString *) model{
    return _modelName;
}

-(void) setModel:(NSString *)model{
    _modelName = model;
}


-(double)maximumSpeed{
    return _speed;
}

-(double)maximumSpeedUsingLocaale:(NSLocale *)locale{
    return _speed;
}

-(void)startEngine{
    _running = true;
}

-(void)driveForDistance:(double)theDistance{
    NSLog(@" Drive for distance %f",theDistance);
}

-(void)driveFromOrigin:(id)theOrigin toDestination:(id)theDestination{
    NSLog(@"Starts at %@ and ends at %@",theOrigin,theDestination);
}

-(void)turnByAngle:(double)theAngle{
    NSLog(@"Driver can you turn by %f",theAngle);
}

-(BOOL) loadPassenger:(id)aPassenger error:(NSError *)error{
    if([aPassenger isMemberOfClass: [NSString class]]){
        if( [_modelName isEqualToString:aPassenger]){
            return TRUE;
        }else{
            return FALSE;
        }
    }
    return FALSE;
}

//constructor methods

-(id)initWithModel:(NSString *)aModel mileage:(double)theMileage{
    self = [super init];
    self.modelName = aModel;
    self.mileage = theMileage;
    self.speed =100;
    return self;
}

-(id) initWithModel:(NSString *)aModel{
    self = [super init];
    self.modelName = aModel;
    self.mileage = 30;
    self.speed =100;
    return self;
}


-(BOOL) isEqualToCar:(Car *)anotherCar{
    if([anotherCar isKindOfClass: [Car class]])
        return [self isEqual:anotherCar];
    else
        return false;
}

-(Car *)fasterCar:(Car *)anotherCar{
    if(self.speed > anotherCar.speed){
        return self;
    }else{
        return anotherCar;
    }
}

-(Car *)slowerCar:(Car *)anotherCar{
    if(self.speed < anotherCar.speed){
        return self;
    }else{
        return anotherCar;
    }
}

+(Car *)car{
    Car* car = [[Car alloc] init];
    return car;
}

+(Car *)carWithModel:(NSString *)aModel{
    Car* car = [[Car alloc]init];
    car.model = aModel;
    return car;
}

+(Car *)carWithModel:(NSString *)aModel mileage:(double)theMileage{
    Car* car = [[Car alloc]init];
    car.model = aModel;
    car.mileage = theMileage; 
    return car;
    
}

static Car* single = nil;

+(Car*) sharedCar{
    if(!single){
        single  = [[Car alloc] init];
    }
    return single;
}

@end
