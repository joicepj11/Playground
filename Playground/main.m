//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"

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

void property(){
    Car *honda = [[Car alloc] init];
    honda.running = YES;
    NSLog(@"Honda is running %d",honda.running);
    NSLog(@"Honda is running %d",[honda isRunning]);
    [honda startEngine];
    NSLog(@"readonlyProperty value %d",honda.readOnlyProperty);
    
    Person *person = [[Person alloc]init];
    [person setName:@"Joice"];
    
    [honda setDriver:person];
    [honda setModel:@"Honda"];
    
    NSLog(@"%@ is driving the %@",honda.driver,honda.model);
    
    person.car = honda;
    
    NSMutableString *model = [NSMutableString stringWithString:@"NSMutableInit"];
    honda.model =  model; // as this has copy property honda's model variable will have new object.
    NSLog(@"%@",honda.model);
    [model setString:@"Modified"];
    NSLog(@"%@",honda.model);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //driver();
       // dynamicTyping();
        property();
    }
    return 0;
}
