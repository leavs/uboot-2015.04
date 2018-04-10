#
# Chipsee Information Technology Co., Ltd.
# http://www.chipsee.com
# lxq <lxq@chipsee.com>
#

obj-$(CONFIG_TARGET_MX6ULEISD)	:= mx6uleisd.o

extra-$(CONFIG_USE_PLUGIN) :=  plugin.bin
$(obj)/plugin.bin: $(obj)/plugin.o
	$(OBJCOPY) -O binary --gap-fill 0xff $< $@
