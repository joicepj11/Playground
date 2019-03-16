//
//  Car+Maintenance.m
//  Playground
//
//  Created by Joice on 16/03/19.
//

#import "Car+Maintenance.h"

@implementation Car (Maintenance)

- (BOOL)needsOilChange{
    return YES;
}

- (void)changeOil{
    NSLog(@"Changing oil for the %@",[self model]);
}

- (void)rotateTires{
    NSLog(@"Rotating tires for the %@", [self model]);
}

- (void)jumpBatteyUsingCar:(Car *)anotherCar{
    NSLog(@"Jumped the %@ with a %@",[self model],[anotherCar model]);
}

@end