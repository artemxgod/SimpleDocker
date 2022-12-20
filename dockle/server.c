#include <fcgi_stdio.h>

int main() {
  while (FCGI_Accept() >= 0) {
    FCGI_printf("Status[200 ok]\r\nContent-Type: text/html\r\n\r\nHello World!");
  }
}