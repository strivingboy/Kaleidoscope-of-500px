//
//  DCHFullSizeViewModel.m
//  Kaleidoscope-of-500px
//
//  Created by Derek Chen on 4/8/15.
//  Copyright (c) 2015 Derek Chen. All rights reserved.
//

#import "DCHFullSizeViewModel.h"
#import "DCHPhotoModel.h"

@interface DCHFullSizeViewModel ()

@property (nonatomic, copy) NSArray *models;
@property (nonatomic, assign) NSInteger initialPhotoIndex;
@property (nonatomic, copy) NSString *initialPhotoName;

@end

@implementation DCHFullSizeViewModel

- (void)dealloc {
    do {
        self.models = nil;
        self.initialPhotoName = nil;
    } while (NO);
}

- (instancetype)initWithPhotoArray:(NSArray *)photoArray initialPhotoIndex:(NSInteger)initialPhotoIndex {
    if (!photoArray || photoArray.count == 0) {
        return nil;
    }
    
    self = [super init];
    if (!self) return nil;
    
    self.models = photoArray;
    self.initialPhotoIndex = initialPhotoIndex;
    
    return self;
}

- (NSString *)initialPhotoName {
    DCHPhotoModel *photoModel = [self initialPhotoModel];
    return [photoModel photoName];
}

- (DCHPhotoModel *)photoModelAtIndex:(NSInteger)index {
    if (index < 0 || index > self.models.count - 1) {
        // Index was out of bounds, return nil
        return nil;
    } else {
        return self.models[index];
    }
}

- (DCHPhotoModel *)initialPhotoModel {
    return [self photoModelAtIndex:self.initialPhotoIndex];
}

@end
