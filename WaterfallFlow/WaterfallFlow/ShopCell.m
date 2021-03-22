//
//  ShopCell.m
//  WaterfallFlow
//
//  Created by Mac on 2021/3/22.
//

#import "ShopCell.h"
#import "Masonry.h"
#import "Shop.h"
#import "UIImageView+WebCache.h"

@interface ShopCell ()
@property (nonatomic, strong) UIImageView *shopImageView;
@property (nonatomic, strong) UILabel *priceLabel;
@end

@implementation ShopCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {

        UIImageView *shopImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:shopImageView];
        self.shopImageView = shopImageView;
        [self.shopImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        
        UILabel *priceLabel = [[UILabel alloc] init];
        priceLabel.textColor = [UIColor whiteColor];
        priceLabel.font = [UIFont systemFontOfSize:14.0];
        priceLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:priceLabel];
        self.priceLabel = priceLabel;
        [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        
    }
    return self;
}

- (void)setShop:(Shop *)shop {
    _shop = shop;
    
    [self.shopImageView sd_setImageWithURL:[NSURL URLWithString:shop.img] placeholderImage:[UIImage imageNamed:@"loading"]];
    self.priceLabel.text = shop.price;
}

@end
