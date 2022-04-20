//
//  TestPlatformFactory.m
//  Runner
//
//  Created by X-ZERO on 2022/4/20.
//

#import "TestPlatformFactory.h"

@interface TestPlatformController : NSObject<FlutterPlatformView>

@end

@implementation TestPlatformController

- (UIView *)view {
    UILabel *lable = [UILabel new];
    lable.text = [NSString stringWithFormat:@"This an PlatformView %u",arc4random()];
    return lable;
}

- (void)dealloc {
    
}

@end

@implementation TestPlatformFactory

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args {
    return [TestPlatformController new];
}

@end
