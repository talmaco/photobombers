//
//  DismissDetailTransition.m
//  Day 4 Photo Bombers App
//
//  Created by Almas T on 6/25/15.
//  Copyright (c) 2015 Almas Tuyakbayev. All rights reserved.
//

#import "DismissDetailTransition.h"

@implementation DismissDetailTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *detailVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    [UIView animateWithDuration:0.3 animations:^{
        detailVC.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        [detailVC.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

@end
