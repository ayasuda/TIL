#include "stdio.h"
#include "singly_linked_list.h"

int main(void)
{
  tListNode node1 = {1, NULL};
  tListNode node2 = {0, &node1};
  int length = ListLength(&node2);
  printf("List length is %d.\n", length);
}
