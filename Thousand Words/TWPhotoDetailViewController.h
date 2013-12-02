//
//  TWPhotoDetailViewController.h
//  Thousand Words
//
//  Created by Alex Paul on 11/30/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@interface TWPhotoDetailViewController : UIViewController

@property (nonatomic, strong) Photo *photo;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
