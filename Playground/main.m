//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Car.h"

void errorsException(){
    NSArray *inventary = @[@"joice",@"is",@"learning"];
    int selectedIndex =4;
    
    @try{
        NSString *car = inventary[selectedIndex];
        NSLog(@"The selected Car is %@", car);
    }@catch(NSException *theException){
        NSLog(@"An Exception occured: %@",theException.name);
        NSLog(@"Here are some details: %@",theException.reason);
    }@finally{
        NSLog(@"Exceuting the finally block");
    }
}

void customException(){

    NSException *e = [NSException
                      exceptionWithName:@"CutomException" reason:@"learning to throw exception" userInfo:nil];
    @throw e;
}

void errors(){
    NSString *fileToLoad = @"/this/path/nothing.txt";
    NSError *error;
    
    NSString *content = [NSString stringWithContentsOfFile:fileToLoad encoding:NSUTF8StringEncoding error:&error];
    if(content == nil){
        NSLog(@"Error loading file %@!", fileToLoad);
        NSLog(@"Domain: %@", error.domain);
        NSLog(@"Error Code: %ld", error.code);
        NSLog(@"Description: %@", [error localizedDescription]);
        NSLog(@"Reason: %@", [error localizedFailureReason]);
    } else {
        // Method succeeded
        NSLog(@"Content loaded!");
        NSLog(@"%@", content);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        errorsException();
        errors();
        @try {
            customException();
        } @catch (NSException *exception) {
            NSLog(@"Reason %@",exception.reason);
        } @finally {
            NSLog(@"Always executed ");
        }
    }
    return 0;
}
