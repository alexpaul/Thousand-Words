//
//  TWPhotoDetailViewController.m
//  Thousand Words
//
//  Created by Alex Paul on 11/30/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import "TWPhotoDetailViewController.h"
#import "Photo.h"
#import "TWFiltersCollectionViewController.h"

@interface TWPhotoDetailViewController ()

@end

@implementation TWPhotoDetailViewController

#pragma mark - View Life Cycle
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.imageView.image = self.photo.image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Actions
- (IBAction)addFilterButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)deleteButtonPressed:(UIButton *)sender
{
    [[self.photo managedObjectContext] deleteObject:self.photo];
    
    NSError *error = nil;
    if (![[self.photo managedObjectContext] save:&error]) {
        // Handle the Error
        NSLog(@"error: %@", error);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Prepare For Segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showFilters"]) {
        if ([segue.destinationViewController isKindOfClass:[TWFiltersCollectionViewController class]]) {
            TWFiltersCollectionViewController *filterCollectionVC = [segue destinationViewController];
            filterCollectionVC.photo = self.photo;
        }
    }
}

@end
