#include <stdlib.h>
#include <stdio.h>
#include "node.h"

NODE * newNode(int n) {
  if (n < 0) {
    return NULL;
  }

  NODE* new_node = malloc(sizeof(NODE));
  printf("Size of NODE is %ld\n", sizeof(NODE));
  new_node -> num = n;
  return new_node;
}
