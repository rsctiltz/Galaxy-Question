//
//  ViewController.m
//  GalaxyQuest
//
//  Created by Ryan Tiltz on 6/5/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>


@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property UIImageView *imageView;
@property NSArray *imageViews;

@end

@implementation ViewController

- (void)viewDidLoad
{
    CGFloat x = 0.0;

    [super viewDidLoad];
    self.imageViews = @[[[UIImageView alloc] initWithImage:[UIImage
                            imageNamed:@"galaxy-quest-01.jpeg"]],
                        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"galaxy-quest-02.jpg"]],
                        [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"galaxyquestaliens.jpg"]]];

    for (UIImageView *imageView in self.imageViews)
    {
        [self.myScrollView addSubview:imageView];
        imageView.frame = CGRectMake(x, 0, self.view.frame.size.width, self.view.frame.size.height);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        x +=imageView.frame.size.width;

    }

    //[self.myScrollView addSubview:self.imageView];
    //self.imageView.frame = self.view.frame;
    self.myScrollView.contentSize = CGSizeMake(x, self.myScrollView.frame.size.height);
    self.myScrollView.minimumZoomScale = 1.0;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.myScrollView.maximumZoomScale = 6.0;
    self.myScrollView.delegate = self;

}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
