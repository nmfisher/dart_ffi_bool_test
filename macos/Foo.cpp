#include <iostream> 

extern "C" {
    #include "Foo.h"
    void foo(bool bar) { 
        if(bar) {
            std::cout << "true" << std::endl;
        } else { 
            std::cout << "false" << std::endl;
        }
    }
}
