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
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        driver();
    }
    return 0;
}
