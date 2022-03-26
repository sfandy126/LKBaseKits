//
//  LKTableViewCell.m
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#import "LKTableViewCell.h"

@interface LKTableViewCell ()
@property (nonatomic,strong) UIView *sepLine;
@end

@implementation LKTableViewCell

- (UIView *)sepLine{
    if (!_sepLine) {
        _sepLine = [UIView new];
        _sepLine.backgroundColor = LKHexColor(@"#F6F6F6");
    }
    return _sepLine;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self setup];
    }
    return self;
}

- (void)setup{
    [self.contentView addSubview:self.sepLine];
    [self.sepLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(0.5);
        make.left.mas_equalTo(LKAdapatedScale(15));
        make.right.mas_equalTo(self.contentView.mas_right).offset(LKAdapatedScale(-15));
        make.bottom.mas_equalTo(self.contentView.mas_bottom);
    }];
}
@end
