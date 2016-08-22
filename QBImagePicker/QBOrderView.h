//
//  QBOrderView.h
//  QBImagePicker
//
//  Created by Jay on 2016. 8. 22..
//  Copyright © 2016년 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface QBOrderView : UIView

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, assign) IBInspectable CGFloat checkmarkLineWidth;

@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, strong) IBInspectable UIColor *bodyColor;
@property (nonatomic, strong) IBInspectable UIColor *textColor;

@property (nonatomic, assign) NSInteger order;

@end
