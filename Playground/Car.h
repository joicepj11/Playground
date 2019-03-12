//
//  Car.h
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (nonatomic,copy) NSString *model;

-(void) drive;
+(void) setDefaultModel:(NSString *)aModel;
-(id) initWithModel:(NSString *)aModel;


@property(getter=isRunning) BOOL running;
@property (readonly) BOOL readOnlyProperty;

-(void)startEngine;
-(void)stopEngine;

@property (nonatomic,strong) Person *driver;

@end

NS_ASSUME_NONNULL_END
