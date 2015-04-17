//
//  DCHGalleryCollectionViewCell.h
//  Kaleidoscope-of-500px
//
//  Created by Derek Chen on 4/8/15.
//  Copyright (c) 2015 Derek Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DCHFluxKit/DCHFluxKit.h>

@class DCHPhotoModel;

@interface DCHGalleryCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) DCHPhotoModel *photoModel;
@property (nonatomic, strong) UIImageView *imageView;

- (void)refresh;

- (void)cellOnScrollView:(UIScrollView *)scrollView didScrollOnView:(UIView *)view;

@end