typedef struct node {
  int num;
  struct node **children;
} NODE;

NODE* newNode(int n);
