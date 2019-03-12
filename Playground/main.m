//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"

void driver(){
    Car *toyata = [[Car alloc] init];
    [toyata setModel:@"Toyata"];
    
    NSLog(@"Created object %@",[toyata model]);
    toyata.model = @"Toyata model";
    NSLog(@"New value =%@",toyata.model);
    [toyata drive];
    [Car setDefaultModel:@"Joice"];
    // initializaton of constructor level object
    Car *nisan = [[Car alloc] init];
    NSLog(@"Created a %@",[nisan model]);
    
    Car *chevy = [[Car alloc] initWithModel:@"Chevy model"];
    NSLog(@"Created a %@",chevy.model);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        driver();
    }
    return 0;
}
