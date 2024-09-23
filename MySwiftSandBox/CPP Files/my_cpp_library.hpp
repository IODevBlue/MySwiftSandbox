//
//  my_cpp_library.hpp
//  MySwiftSandBox
//
//  Created by iodevblue on 23-09-2024.
//

// my_cpp_library.hpp
#ifndef MY_CPP_LIBRARY_H
#define MY_CPP_LIBRARY_H

#include <stdio.h>
class my_cpp_class {

public:
	int add(int a, int b);
	void greet(const char *name);
};

int my_cpp_class::add(int a, int b) {
	return a + b;
}

void my_cpp_class::greet(const char *name) {
	printf("Hello, %s!\n", name);
}

#endif // MY_CPP_LIBRARY_H
