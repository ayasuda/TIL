#ifndef SINGLY_LINKED_LIST_H
#define SINGLY_LINKED_LIST_H

typedef struct ListNode {
  int data;
  struct ListNode *next;
} tListNode;

int ListLength(tListNode *head);

#endif
