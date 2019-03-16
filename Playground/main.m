//
//  main.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>

void cdataType(){
   
    char aChar = 'a';
    unsigned char anUnsignedChar = 255;
    NSLog(@"The letter %c is ASCII number %hhd", aChar, aChar);
    NSLog(@"%hhu", anUnsignedChar);
    
    short s = 10;
    int aint  = 255;
    long along = 12345;
    
    NSLog(@"short value = %hd , int value =%d, long value =%ld",s,aint,along);
    //The hh, h, l and ll characters are modifiers that tell NSLog() to treat the associated integer as a char, short, long, or long long, respectively.
    
    // Determining type size
    NSLog(@"Size of char: %zu", sizeof(char)); // This will always be 1
    NSLog(@"Size of short: %zu", sizeof(short));
    NSLog(@"Size of int: %zu", sizeof(int));
    NSLog(@"Size of long: %zu", sizeof(long));
    NSLog(@"Size of long long: %zu", sizeof(long long));
    NSLog(@"Size of float: %zu", sizeof(float));
    NSLog(@"Size of double: %zu", sizeof(double));
    NSLog(@"Size of size_t: %zu", sizeof(size_t));
    
    //macros
    NSLog(@"min and max value of int is %d and %d",INT_MIN,INT_MAX);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        cdataType();
    }
    return 0;
}
