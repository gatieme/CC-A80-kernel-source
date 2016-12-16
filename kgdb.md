

内核配置选项

```cpp
CONFIG_HAVE_ARCH_KGDB=y
CONFIG_KGDB=y
CONFIG_KGDB_SERIAL_CONSOLE=y
# CONFIG_KGDB_TESTS is not set
CONFIG_KGDB_KDB=y
# CONFIG_DEBUG_RODATA is not set
```


u-boot的初始环境变量


```cpp
sunxi#print
baudrate=115200
boot_normal=fatload mmc 0:1 20007800 uimage;bootm 20007800
bootcmd=run setargs_cubie boot_normal
bootdelay=3
console=ttyS0,115200
console1=tty1
init=/init
loglevel=8
mmc_root=/dev/mmcblk0p2
setargs_cubie=setenv bootargs console=${console1} console=${console} root=${mmc_root} loglevel=${logle}
stderr=serial
stdin=serial
stdout=serial

Environment size: 381/131068 bytes
```


然后我配置uboot

```cpp
setenv kgdboc "ttyS0,115200 kgdbwait"

setenv setargs_cubie "setenv bootargs console=${console} \
kgdboc=${kgdboc} \
root=${mmc_root} \
loglevel=${logle}"
```

然后boot, 但是内核并没有在引导的时候停止

