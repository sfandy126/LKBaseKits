//
//  LKTableViewCell.h
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LKTableViewCell : UITableViewCell
/**
 *分割线，默认为底部分割线，可自行修改约束
 */
@property (nonatomic,strong,readonly) UIView *sepLine;

/**
 *子类自定义cell
 *调用[supper setup]则显示自定义分割线
 */
- (void)setup;
@end

NS_ASSUME_NONNULL_END
