//
//  Photo.h
//  Thousand Words
//
//  Created by Alex Paul on 11/30/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Album;

@interface Photo : NSManagedObject

@property (nonatomic, retain) id image;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) Album *albumBook;

@end
