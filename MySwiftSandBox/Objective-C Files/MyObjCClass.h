//
//  MyObjCClass.h
//  MySwiftSandBox
//
//  Created by iodevblue on 23-09-2024.
//

#ifndef MyObjCClass_h
#define MyObjCClass_h

#import <Foundation/Foundation.h>

@interface MyObjCClass : NSObject

typedef NS_ENUM(NSInteger, DeviceType) {
	DeviceTypeUnknown = 0,
	DeviceTypeiPhone,
	DeviceTypeiPad,
	DeviceTypeAppleWatch
};

typedef NS_OPTIONS(NSUInteger, MyOptions) {
	MyOptionNone       = 0,        // No options set
	MyOptionFirst      = 1 << 0,   // 0001
	MyOptionSecond     = 1 << 1,   // 0010
	MyOptionThird      = 1 << 2,   // 0100
	MyOptionFourth     = 1 << 3    // 1000
};


- (void)sayHello;

@end

#endif /* MyObjCClass_h */
