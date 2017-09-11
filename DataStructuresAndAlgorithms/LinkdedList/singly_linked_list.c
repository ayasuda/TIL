#include <stdio.h>
#include "singly_linked_list.h"

int ListLength(tListNode *head) {
  tListNode *current = head;
  int count = 0;
  while (current != NULL) {
    count++;
    current = current->next;
  }
  return count;
}
