#import "TradPlusResourceSupport.h"
#import "resource_bundle_accessor.h"
#import <objc/runtime.h>

@implementation TradPlusResourceSupport

static IMP AdsEyeOriginalBundleForClass = NULL;

static BOOL AdsEyeIsTradPlusClass(Class targetClass) {
    NSString *className = NSStringFromClass(targetClass);
    return [className hasPrefix:@"TradPlus"] ||
           [className hasPrefix:@"TP"] ||
           [className hasPrefix:@"MS"] ||
           [className hasPrefix:@"Ms"];
}

static NSBundle *AdsEyeTradPlusBundleForClass(id self, SEL command, Class targetClass) {
    if (AdsEyeIsTradPlusClass(targetClass)) {
        // TradPlus 为静态 XCFramework，资源位于当前 SPM target 的资源 Bundle。
        return SWIFTPM_MODULE_BUNDLE;
    }

    NSBundle *(*originalImplementation)(id, SEL, Class) = (void *)AdsEyeOriginalBundleForClass;
    return originalImplementation(self, command, targetClass);
}

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class bundleMetaClass = object_getClass([NSBundle class]);
        Method method = class_getClassMethod([NSBundle class], @selector(bundleForClass:));
        AdsEyeOriginalBundleForClass = method_getImplementation(method);
        class_replaceMethod(bundleMetaClass,
                            @selector(bundleForClass:),
                            (IMP)AdsEyeTradPlusBundleForClass,
                            method_getTypeEncoding(method));
    });
}

@end
