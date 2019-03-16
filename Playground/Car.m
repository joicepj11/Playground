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

@end
