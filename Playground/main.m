//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Car+Maintenance.h"

void maintenance(){
    Car *porsche = [[Car alloc]init];
    porsche.model = @"Porsche 911 Turbo";
    Car *ford = [[Car alloc]init];
    ford.model = @"Ford F-150";
    
    [porsche startEngine];
    [porsche drive];
    [porsche turnRight];
    [porsche turnLeft];
    
    if ([porsche needsOilChange]) {
        [porsche changeOil];
    }
    [porsche rotateTires];
    [porsche jumpBatteyUsingCar:ford];
    
    // below line will not work because of car+Protected file is not added
    //[porsche prepareToDrive];
    
    SEL protectedMethod = @selector(prepareToDrive);
    if([porsche respondsToSelector:protectedMethod]){
        [porsche performSelector:protectedMethod];
    }
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        maintenance();
    }
    return 0;
}
