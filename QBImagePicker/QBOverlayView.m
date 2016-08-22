//
//  QBOverlayView.m
//  QBImagePicker
//
//  Created by Jay on 2016. 8. 22..
//  Copyright © 2016년 Katsuma Tanaka. All rights reserved.
//

#import "QBOverlayView.h"

@implementation QBOverlayView

- (void)setType:(QBOverlayViewType)type {
    switch (type) {
        case QBOverlayViewTypeCheckmark:
            self.checkmarkView.hidden = NO;
            self.orderView.hidden = YES;
            break;

        case QBOverlayViewTypeOrder:
            self.checkmarkView.hidden = YES;
            self.orderView.hidden = NO;
            break;
    }
}

@end
