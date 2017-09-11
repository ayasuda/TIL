#include <stdio.h>
#include "assertion.h"
#include "singly_linked_list.h"

int test_singly_liked_list_length(void);

int main(void)
{
  TEST(test_singly_liked_list_length);
  return 0; // 0 返したら正常終了
}

int test_singly_liked_list_length(void)
{
  tListNode node1 = {1, NULL};
  tListNode node2 = {0, &node1};
  int length = ListLength(&node2);

  INT_EQUAL(2, length);

  return 1;
}
