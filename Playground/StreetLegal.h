//
//  StreetLegal.h
//  Playground
//
//  Created by Joice on 15/03/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol StreetLegal <NSObject>

-(void) signalStop;
-(void) signaleLeftTurn;
-(void) signaleRightTurn;

@end

NS_ASSUME_NONNULL_END
