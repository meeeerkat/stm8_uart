
SDCC=sdcc -lstm8 -mstm8 --out-fmt-ihx --std-sdcc11

.PHONY=clean, test, build


build: uart.lib

test: test.ihx
	sudo stm8flash -c stlinkv2 -p stm8s003f3 -w test.ihx
	sleep 1
	./monitor.sh



test.ihx: uart.lib
	${SDCC} test.c uart.lib

uart.lib: uart.rel print.rel
	sdar -rc uart.lib uart.rel print.rel

print.rel: uart.rel
	${SDCC} -c print.c uart.rel

uart.rel:
	${SDCC} -c uart.c

clean:
	rm *.lib *.mem *.rel *.ihx *.rst *.map *.lk *.sym *.asm *.lst 2> /dev/null
