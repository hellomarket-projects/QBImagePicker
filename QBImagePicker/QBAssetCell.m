//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet QBOverlayView *overlayView;

@end

@implementation QBAssetCell

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}

- (void)setOverlayViewType:(QBOverlayViewType)overlayViewType {
    self.overlayView.type = overlayViewType;
}

- (void)setOrder:(NSInteger)order {
    _order = order;

    self.overlayView.orderView.order = order;
}

@end
