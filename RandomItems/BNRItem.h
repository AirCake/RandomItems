//
//  BNRItem.h
//  RandomItems
//
//  Created by Ido Cohen on 19/11/2014.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

// declare Access Methods for each items
-(void)setItemName:(NSString *)str; // setter
-(NSString *)itemName; //getter

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;

-(instancetype)initWithItemName:
(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:
(NSString *)name;


@end
