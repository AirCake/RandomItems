//
//  BNRItem.m
//  RandomItems
//
//  Created by Ido Cohen on 19/11/2014.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem



-(void)setItemName:(NSString *)str
{
    _itemName = str; //pass whatever is in str to object
}
-(NSString  *)itemName
{
    return _itemName; // return value from object

}

-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
    
}
-(NSString *)serialNumber
{
    return _serialNumber;
}

-(void)setValueInDollars:(int)v
{
    _valueInDollars =  v;
}
-(int)valueInDollars
{
    return _valueInDollars;
}

-(NSDate *)dateCreated
{
    return _dateCreated;
}

- (NSString *)description //overrinding a method called descriotion from the superclass, by redefining the way it works
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    return descriptionString;
}

-(instancetype)initWithItemName: //implementation of declared instance method
(NSString *)name
                 valueINDollars:(int)value
                   serialNumber:(NSString *)sNumber
{
    self = [super init]; // always call the designated superclass inititializer
    if (self) { //checking the init worked. if they all have values (and not nil, return it) if item is not retured or error is recieved, init wasnt done
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
    
    }

-(instancetype)initWithItemName: //implementing another method setting up default values to the items
(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
    
}

-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}
@end