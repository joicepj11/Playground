//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"

void blocks(){
    double (^distanceFromRateAndTime)(double rate,double time);
    distanceFromRateAndTime = ^double(double rate,double time){
        return rate * time;
    };
    
    double dx = distanceFromRateAndTime(35,1.5);
    NSLog(@"A car driving 35 mph will travel %.2f miles in 1.5 hours.",dx);
    
    //closures
    NSString *make=@"Hondaa";
    NSString*(^getFullCarName)(NSString *)=^(NSString *model){
        return [make stringByAppendingFormat:@" %@",model];
    };
    
    NSLog(@"%@",getFullCarName(@"Accord"));
    
    __block int i  = 0;
    
    int(^count)(void) = ^{
        i+=1;
        return i;
    };
    
    NSLog(@"%d",count());
    
    Car *theCar = [[Car alloc] init];
    [theCar driveFromDuration:10.0 withVariableSpeed:^(double time){ return 5.0;} steps:2];
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        blocks();
    }
    return 0;
}
