
## Simple uart library for STM8
Generates a library with a basic uart driver (uart.\*)  
+ reimplements putchar (print.\*) so printf can be used with a logic analyser connected to the uart (see monitor.sh for a printing example using sigrok-cli)

Using STM8S103F3.h from https://github.com/gicking/STM8_headers
(and based on an example given by that same repo)
