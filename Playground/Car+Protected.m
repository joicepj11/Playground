//
//  Car+Protected.m
//  Playground
//
//  Created by Joice on 16/03/19.
//

#import "Car+Protected.h"

@implementation Car (Protected)

- (void)prepareToDrive{
    NSLog(@"Doing some inetrnal work toget the  %@ ready to drive",[self model]);
}

@end
