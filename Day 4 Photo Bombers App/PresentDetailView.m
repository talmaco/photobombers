//
//  PresentDetailView.m
//  Day 4 Photo Bombers App
//
//  Created by Almas T on 6/25/15.
//  Copyright (c) 2015 Almas Tuyakbayev. All rights reserved.
//

#import "PresentDetailView.h"

@implementation PresentDetailView

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *detailVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    detailVC.view.alpha = 0.0;
    
    CGRect frame = containerView.bounds;
    frame.origin.x = 0;
    frame.origin.y += 20;
    
    detailVC.view.frame = frame;
    [containerView addSubview:detailVC.view];
    
    [UIView animateWithDuration:0.3 animations:^{
        detailVC.view.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
