//
//  Car.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import "Car.h"
#import "Car+Protected.h"

@implementation Car

-(void) startEngine{
    if([self engineIsWorking]){ // private method
        [self prepareToDrive];
        NSLog(@"Starting the %@ s engine",_model);
    }
}

- (void)drive{
    
    NSLog(@"The %@ is now drving",_model);
}

-(void)turnLeft{
   NSLog(@"The %@ is turning left ",_model);
}

- (void)turnRight{
    NSLog(@"The %@ is turning right",_model);
}

- (BOOL)engineIsWorking{
    return TRUE;
}

-(void) driveFromDuration:(double)duration
        withVariableSpeed:(double (^)(double time))speedFunction
                    steps:(int)numSteps{
    double dt = duration / numSteps;
    for (int i =1; i<=numSteps; i++) {
        _odometer += speedFunction(i*dt)*dt;
        NSLog(@"%f odomete",_odometer);
    }
}

@end
