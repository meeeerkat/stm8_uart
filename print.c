#include "print.h"
#include "uart.h"

int putchar(int data) {
  uart__write(data);
  return data;
}
