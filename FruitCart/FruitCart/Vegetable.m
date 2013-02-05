//
//  Vegetable.m
//  FruitCart
//
//  Created by Lion User on 05/02/2013.
//  Copyright (c) 2013 TomGraziani. All rights reserved.
//

#import "Vegetable.h"

@implementation Vegetable

-initWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape
{
    _name = inName;
    _shape = inShape;
    _color = inColor;
    return self;
}

-(NSString *) description
{
    return _name;
}

@end
