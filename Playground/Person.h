//
//  Person.h
//  Playground
//
//  Created by Joice on 12/03/19.
//

#import <Foundation/Foundation.h>

@class Car;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) NSString *name;

//@property (nonatomic,strong) Car *car;  this type of declaration is bad as it makes memory
//leaks, also called as retain cycle.

@property (nonatomic,weak) Car *car; // weak reference make person object ownership on car object as 0(reference count for memory deallocation,there is no garbage collection in objective c)

@end

NS_ASSUME_NONNULL_END
