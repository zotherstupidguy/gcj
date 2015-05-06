#include <stdlib.h>
#include <stdio.h>

struct tree_el {
  int val;
  struct tree_el * right, * left;
};

typedef struct tree_el node;

void insert(node ** tree, node * item) {
  if(!(*tree)) {
    *tree = item;
    return;
  }
  if(item ->val<(*tree) -> val)
    insert(&(*tree)->left, item);
  else if(item->val>(*tree)->val)
    insert(&(*tree)->right, item);
};

void printout(node * tree) {
  if (tree -> left) printout (tree -> left);
  printf(
      }
