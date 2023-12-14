#include <iostream>

extern "C" {
  void hello_from_cc();
}

void hello_from_cc() {
  std::cout << "Hello world from C++!" << std::endl;
}
