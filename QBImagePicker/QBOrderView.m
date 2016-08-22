//
//  QBOrderView.m
//  QBImagePicker
//
//  Created by Jay on 2016. 8. 22..
//  Copyright © 2016년 Katsuma Tanaka. All rights reserved.
//

#import "QBOrderView.h"

@interface QBOrderView ()

@property (weak, nonatomic) IBOutlet UILabel *orderedLabel;

@end

@implementation QBOrderView

- (void)awakeFromNib
{
    [super awakeFromNib];

    // Set default values
    self.borderWidth = 1.0;
    self.checkmarkLineWidth = 1.2;

    self.borderColor = [UIColor whiteColor];
    self.bodyColor = [UIColor colorWithRed:(20.0 / 255.0) green:(111.0 / 255.0) blue:(223.0 / 255.0) alpha:1.0];
    self.textColor = [UIColor whiteColor];

    // Set shadow
    self.layer.shadowColor = [[UIColor grayColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.6;
    self.layer.shadowRadius = 2.0;
}

- (void)drawRect:(CGRect)rect
{
    // Border
    [self.borderColor setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];

    // Body
    [self.bodyColor setFill];
    [[UIBezierPath bezierPathWithOvalInRect:CGRectInset(self.bounds, self.borderWidth, self.borderWidth)] fill];
}

- (void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;

    self.orderedLabel.textColor = _textColor;
}

- (void)setOrder:(NSInteger)order {
    _order = order;

    self.orderedLabel.text = @(order).stringValue;
}

@end
