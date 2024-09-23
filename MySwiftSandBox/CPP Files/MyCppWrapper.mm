//
//  MyCppWrapper.m
//  MySwiftSandBox
//
//  Created by iodevblue on 23-09-2024.
//

#import "MyCppWrapper.h"
#import "my_cpp_library.hpp"

@interface MyCppWrapper ()
@property my_cpp_class *cppObject;
@end

@implementation MyCppWrapper

- (instancetype)init {
	self = [super init];
	if (self) {
		_cppObject = new my_cpp_class(); // Create an instance of your C++ class
	}
	return self;
}

- (int)addWithA:(int)a b:(int)b {
	return _cppObject->add(a, b); // Call the C++ add method
}

- (void)greetWithName:(NSString *)name {
	// Convert NSString to C-style string
	const char *cName = [name UTF8String];
	_cppObject->greet(cName); // Call the C++ greet method
}

- (void)dealloc {
	delete _cppObject; // Clean up the C++ object
}

@end
