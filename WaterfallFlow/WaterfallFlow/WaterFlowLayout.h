//
//  WaterFlowLayout.h
//  WaterfallFlow
//
//  Created by Mac on 2021/3/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class WaterFlowLayout;
@protocol WaterFlowLayoutDelegate <NSObject>
@required
- (CGFloat)waterFlowLayout:(WaterFlowLayout *)waterFlowLayout heightForItemAtIndex:(NSUInteger)index itemWidth:(CGFloat)itemWidth;
@optional
- (CGFloat)columnCountInWaterFlowLayout:(WaterFlowLayout *)waterFlowLayout;
- (CGFloat)columnMarginInWaterFlowLayout:(WaterFlowLayout *)waterFlowLayout;
- (CGFloat)rowMarginInWaterFlowLayout:(WaterFlowLayout *)waterFlowLayout;
- (UIEdgeInsets)edgeInsetsInWaterFlowLayout:(WaterFlowLayout *)waterFlowLayout;
@end

@interface WaterFlowLayout : UICollectionViewLayout
@property (nonatomic, weak) id <WaterFlowLayoutDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
