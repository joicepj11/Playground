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

void dynamicTyping(){
    Car *delorean = [[Car alloc] initWithModel:@"DeLorean"];
    // Get the class of an object
    NSLog(@"%@ is an instance of the %@ class", [delorean model], [delorean class]);
    // Check an object against a class and all subclasses
    if ([delorean isKindOfClass:[NSObject class]]) {
        NSLog(@"%@ is an instance of NSObject or one of its subclasses",
                [delorean model]);
        
    } else {
        NSLog(@"%@ is not an instance of NSObject or " "one of its subclasses",
              [delorean model]);
    }
    // Check an object against a class, but not its subclasses
    if ([delorean isMemberOfClass:[NSObject class]]) {
        NSLog(@"%@ is a instance of NSObject",[delorean model]);
        
    } else {
        NSLog(@"%@ is not an instance of NSObject", [delorean model]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        driver();
        dynamicTyping();
    }
    return 0;
}
