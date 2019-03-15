//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"
#import "Bicycle.h"

void protocol(){
    Bicycle* bike = [[Bicycle alloc] init];
    [bike startPedaling];
    [bike lockToStructure:bike];
    
    if([bike conformsToProtocol:@protocol(StreetLegal)]){
        [bike signalStop];
        [bike signaleLeftTurn];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        protocol();
        
    }
    return 0;
}
