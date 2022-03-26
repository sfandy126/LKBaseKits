//
//  LKMacro.h
//  LKProject
//
//  Created by beichen on 2022/3/25.
//

#ifndef LKMacro_h
#define LKMacro_h
#import "YYCategories.h"

CG_INLINE UIColor *LKHexColor(NSString *str){
    return [UIColor colorWithHexString:str];
}

#define LKStringFormat(format,...) [NSString stringWithFormat:format,##__VA_ARGS__]

#define LKIdentify(Class) [NSString stringWithFormat:@"%@_identify",NSStringFromClass([Class class])]


#define LKFont(x) [UIFont systemFontOfSize:x]
#define LKBoldFont(x) [UIFont boldSystemFontOfSize:x]

#define LKAdapatedScale(x) ceilf((x))


#define LK_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define LK_SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height

#define LK_IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define LK_IPHONE_X (LK_SCREEN_WIDTH >=375.0f && LK_SCREEN_HEIGHT >=812.0f && LK_IS_IPHONE)



#define LK_NAVIGATION_HEIGHT (LK_IPHONE_X?88:64)
#define LK_TABBAR_HEIGHT (LK_IPHONE_X?83:49)

#endif /* LKMacro_h */
