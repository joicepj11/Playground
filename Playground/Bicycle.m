//
//  Bicycle.m
//  Playground
//
//  Created by Joice on 15/03/19.
//

#import "Bicycle.h"

@implementation Bicycle

- (void)signalStop {
    NSLog(@"Sending left arm downwards");
}

- (void)signaleLeftTurn {
    NSLog(@"Bending left arm outwards");
}

- (void)signaleRightTurn {
    NSLog(@"Bending left arm upwards");
}

-(void)startPedaling{
    NSLog(@"Here we go");
}

-(void) removeFromWheel{
    NSLog(@"Front wheel is off ");
}

-(void) lockToStructure:(id)theStructure{
    NSLog(@"Locked to structure");
}
@end
