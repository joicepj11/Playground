//
//  Bicycle.h
//  Playground
//
//  Created by Joice on 15/03/19.
//

#import <Foundation/Foundation.h>
#import "StreetLegal.h"
NS_ASSUME_NONNULL_BEGIN

@interface Bicycle : NSObject <StreetLegal>

-(void) startPedaling;
-(void) removeFromWheel;
-(void) lockToStructure:(id)theStructure;

@end

NS_ASSUME_NONNULL_END
