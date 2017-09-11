#ifndef ASSERTION_H
#define ASSERTION_H

// 今度もうちょっと整備するかも？

# define TEST(testcase) \
  printf("\033[33m" #testcase "\033[0m\n"); \
  if (testcase()) \
    ; \
  else \
    ; \


# define INT_EQUAL(expected, actual) \
  if (expected == actual) \
    printf("\t%d (expected) = \033[32m %d\033[0m (actual)\n",expected, actual); \
  else \
    printf("\t%d (expected) = \033[31m %d\033[0m (actual)\n",expected, actual); \

#endif
