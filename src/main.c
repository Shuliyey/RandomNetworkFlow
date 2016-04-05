#include <stdio.h>
#include <stdlib.h>
#include "node.h"

int main(int argc, const char* argv[]) {
  NODE* x = newNode(5);
  int a;
  printf("hell world %ld\n", sizeof(*x));
  printf("size is %d\n", x->num);
}
