//
//  TWCoreDataHelper.m
//  Thousand Words
//
//  Created by Alex Paul on 11/29/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import "TWCoreDataHelper.h"

@implementation TWCoreDataHelper

+ (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate respondsToSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

@end
