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

void nsString(){
    
    NSString *make =@"Porsche";
    NSString *model = @"911";
    int year = 1968;
    NSString *message = [NSString stringWithFormat:@"That's a %@ %@ from %d!",make,model,year ];
    NSLog(@"%@",message);
    NSString *car = @"Porshe Boxster";
    
    //Comparing strings
    if([car isEqualToString:@"Porshe Boxster"]){
        NSLog(@"That car is Porshe Boxster");
    }
    if([car hasPrefix:@"Porsche"]){
        NSLog(@"That car is some sort of porsche");
    }
    
    NSString *otherCar = @"Ferrari";
    NSComparisonResult result = [car compare:otherCar];
    if(result == NSOrderedAscending){
        NSLog(@"The letter p comes before f");
    }else if(result == NSOrderedSame){
        NSLog(@"We're comparing the same string");
    }else if(result == NSOrderedDescending){
        NSLog(@"The letter p comes after f");
    }
    
    //Combining strings
    make = @"Ferrari";
    model = @"458 Spider";
    car = [make stringByAppendingString:model];
    NSLog(@"%@",car);
    
    //Searching strings
    car = @"Maserati GranCabrio";
    NSRange searchResult = [car rangeOfString:@"Cabrio"];
    
    if(searchResult.location == NSNotFound){
        NSLog(@"Searching string was not found");
    }else{
        NSLog(@"Cabrio starts at index %lu and is %lu character long",searchResult.location,searchResult.length);
        
    }
    
    //subdividing strings
    car=@"Masterati GranTurismo";
    NSLog(@"%@", [car substringFromIndex:9]);
    NSLog(@"%@", [car substringToIndex:8]);
    NSRange range = NSMakeRange(9, 4);
    NSLog(@"%@", [car substringWithRange:range]);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        cdataType();
//        objectivecDataType();
//        nsNumber();
        nsString();
    }
    return 0;
}
