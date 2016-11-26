//
//  JXDrawingCircleProgressButton.h
//  JXDrawingCircleProgress
//
//  Created by Jiuxing Wang on 16/11/26.
//  Copyright © 2016年 Heroic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JXDrawingCircleProgressButton;

typedef void (^JXDrawingCircleProgressCompletionHanlder)(JXDrawingCircleProgressButton *progressButton);

@interface JXDrawingCircleProgressButton : UIButton

@property (nonatomic, strong) UIColor *trackColor;
@property (nonatomic, strong) UIColor *progressColor;
@property (nonatomic, strong) UIColor *fillColor;
@property (nonatomic, assign) CGFloat lineWidth;

- (void)startProgressAnimationWithDuration:(double)duration completionHandler:(JXDrawingCircleProgressCompletionHanlder)completionHandler;

@end
