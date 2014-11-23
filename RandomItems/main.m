//
//  main.m
//  RandomItems
//
//  Created by RB on 19/11/2014.
//  Copyright (c) 2014 BNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main (int arc, const char *argv[])
{
    @autoreleasepool {
        
    
    NSMutableArray *items = [[NSMutableArray alloc] init]; // Set an instance of NSMutableArray. Call the pointer items. Store in memory. Initialize.
    [items addObject:@"Table"]; // Add an object to items
    [items addObject:@"Chair"]; // Same
   [items addObject:@"Coffee Table"]; // Same
    
        
   // [items insertObject:@"TV"atIndex:0]; // Place an object at index 0
        for (NSString *item in items)
        {
            NSLog (@"%@", item);
            
        }
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"DSFG34"]; //initialize with these names
        NSLog (@"%@", item);

    items = nil; // Flush memory by emptying items
    }
return 0; // End program;

}
    

     
