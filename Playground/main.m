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

void objectivecDataType(){
    id genericDataType = @"AN NSString object";
    NSLog(@"%@",[genericDataType description]);
    genericDataType = @{@"model":@"Ford", @"year":@1967};
    NSLog(@"%@",[genericDataType description]);
    
    Class targetClass = [NSString class];
    genericDataType =@"An NSString object";
    if ([genericDataType isKindOfClass:targetClass]) {
        NSLog(@"yes generic data type is an instance of nsstring");
    }
}

void nsNumber(){
    NSNumber *aBool = [NSNumber numberWithBool:NO];
    NSNumber *aChar = [NSNumber numberWithChar:'z'];
    NSNumber *aUChar = [NSNumber numberWithUnsignedChar:255];
    NSNumber *aShort = [NSNumber numberWithShort:32767];
    NSNumber *aUShort = [NSNumber numberWithUnsignedShort:65535];
    NSNumber *anInt = [NSNumber numberWithInt:2147483647];
    NSNumber *aUInt = [NSNumber numberWithUnsignedInt:4294967295];
    NSNumber *aLong = [NSNumber numberWithLong:9223372036854775807];
    NSNumber *aULong = [NSNumber numberWithUnsignedLong:1844674407370955169];
    NSNumber *aFloat = [NSNumber numberWithFloat:26.99f];
    NSNumber *aDouble = [NSNumber numberWithDouble:26.99];
    NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
    NSLog(@"%c", [aChar charValue]);
    NSLog(@"%hhu", [aUChar unsignedCharValue]);
    NSLog(@"%hi", [aShort shortValue]);
    NSLog(@"%hu", [aUShort unsignedShortValue]);
    NSLog(@"%i", [anInt intValue]);
    NSLog(@"%u", [aUInt unsignedIntValue]);
    NSLog(@"%li", [aLong longValue]);
    NSLog(@"%lu", [aULong unsignedLongValue]);
    NSLog(@"%f", [aFloat floatValue]);
    NSLog(@"%f", [aDouble doubleValue]);
    
    float a = [aFloat floatValue];
    NSLog(@"NSNumber to primtive data type %f",a);
    
    //Numeric Literals
    NSNumber *aBoolLiteral = @NO;
    
    NSLog(@"Boolean literal %@",aBoolLiteral);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        cdataType();
//        objectivecDataType();
        nsNumber();
    }
    return 0;
}
