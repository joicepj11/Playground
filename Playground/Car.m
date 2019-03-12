//
//  Car.m
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import "Car.h"

static NSString *_defaultModel;

@implementation Car{
    //private variable section
    double _odometer;
}

+(void) setDefaultModel:(NSString *)aModel{
    _defaultModel = [aModel copy];
}


-(void) drive{
    NSLog(@"Model name is %@ ",self.model);
}

-(id) initWithModel:(NSString *)aModel{
    self = [super init];
    if(self){
        _model =[aModel copy];
        _odometer =0;
    }
    return self;
}

-(id) init{
    return [self initWithModel:_defaultModel];
}

+(void) initialize{
    if(self ==[Car class]){
        _defaultModel = @"defaultModel";
    }
}

@end
