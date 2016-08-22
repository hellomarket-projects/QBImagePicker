//
//  QBOverlayView.h
//  QBImagePicker
//
//  Created by Jay on 2016. 8. 22..
//  Copyright © 2016년 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QBCheckmarkView.h"
#import "QBOrderView.h"

typedef NS_ENUM(NSInteger, QBOverlayViewType) {
    QBOverlayViewTypeCheckmark,
    QBOverlayViewTypeOrder
};

@interface QBOverlayView : UIView

@property (weak, nonatomic) IBOutlet QBCheckmarkView *checkmarkView;
@property (weak, nonatomic) IBOutlet QBOrderView *orderView;

@property (nonatomic, assign) QBOverlayViewType type;

@end
