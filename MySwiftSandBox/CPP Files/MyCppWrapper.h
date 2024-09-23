//
//  MyCppWrapper.h
//  MySwiftSandBox
//
//  Created by iodevblue on 23-09-2024.
//


#ifndef MyCppWrapper_h
#define MyCppWrapper_h

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface MyCppWrapper : NSObject

- (instancetype)init;
- (int)addWithA:(int)a b:(int)b;
- (void)greetWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#endif /* MyCppWrapper_h */

