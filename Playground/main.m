//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>

typedef unsigned char ColorComponent;

void method(){
    int value = arc4random_uniform(100);
    NSLog(@"Random value is %d",value);

}

static void printAndIncrement(){
    static int b =10;
    NSLog(@"print and increment value =%d",b++);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        method();
        printAndIncrement();
    }
    return 0;
}
