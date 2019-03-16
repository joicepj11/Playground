//
//  Car+Maintenance.h
//  Playground
//
//  Created by Joice on 16/03/19.
//

#import "Car.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car (Maintenance)

-(BOOL)needsOilChange;
-(void)changeOil;
-(void)rotateTires;
-(void)jumpBatteyUsingCar:(Car *)anotherCar;

@end

NS_ASSUME_NONNULL_END
