CONFIG_MODULE_SIG=n
obj-m := usb-driver.o
KERNEL_DIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
all:
	make -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules
clean:
	rm *.o *.ko *.mod.c

.PHONY:clean
