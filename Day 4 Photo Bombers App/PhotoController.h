//
//  PhotoController.h
//  Day 4 Photo Bombers App
//
//  Created by Almas T on 6/25/15.
//  Copyright (c) 2015 Almas Tuyakbayev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PhotoController : NSObject

+ (void) imageForPhoto: (NSDictionary *)photo withSize:(NSString *)size completion:(void(^)(UIImage *image)) completion;

@end
