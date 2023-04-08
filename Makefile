
SDCC=sdcc -lstm8 -mstm8 --out-fmt-ihx --std-sdcc11


uart.lib: uart.rel print.rel
	sdar -rc uart.lib uart.rel print.rel

print.rel: uart.rel
	${SDCC} -c print.c uart.rel

uart.rel:
	${SDCC} -c uart.c

clean:
	rm *.lib *.mem *.rel *.ihx *.rst *.map *.lk *.sym *.asm *.lst 2> /dev/null
