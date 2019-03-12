//
//  Car.h
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (copy) NSString *model;

-(void) drive;
+(void) setDefaultModel:(NSString *)aModel;

@end

NS_ASSUME_NONNULL_END
