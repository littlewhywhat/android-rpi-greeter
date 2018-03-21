#include "greeter.h"
#include <stdio.h>

void Greeter::greet(const char * whom) {
  printf("Hello, %s!\n", whom);
}