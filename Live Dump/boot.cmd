# K2B eMMC FIT boot (kernel + DTB)
setenv load_addr       0x45000000
setenv kernel_addr_r   0x40080000
setenv fdt_addr_r      0x4FA00000
setenv ramdisk_addr_r  0x4FE00000

echo "Boot script (eMMC, FIT) from ${devtype} ${devnum} prefix=${prefix}"

# import optional env
if test -e ${devtype} ${devnum} ${prefix}autoEnv; then
  load ${devtype} ${devnum} ${load_addr} ${prefix}autoEnv
  env import -t ${load_addr} ${filesize}
fi
if test -e ${devtype} ${devnum} ${prefix}uEnv.txt; then
  load ${devtype} ${devnum} ${load_addr} ${prefix}uEnv.txt
  env import -t ${load_addr} ${filesize}
fi

# console args (match vendor logic)
if test "${console}" = "display" || test "${console}" = "both"; then setenv consoleargs "console=${debug_uart},115200 console=tty1"; fi
if test "${console}" = "serial"; then setenv consoleargs "console=${debug_uart},115200"; fi
if test "${bootlogo}" = "true"; then
  setenv consoleargs "splash plymouth.ignore-serial-consoles ${consoleargs}"
else
  setenv consoleargs "splash=verbose ${consoleargs}"
fi

# partuuid (cosmetic)
if test "${devtype}" = "mmc"; then part uuid mmc 0:1 partuuid; fi

# default rootdev if not overridden by uEnv.txt
if test -z "${rootdev}"; then setenv rootdev "/dev/mmcblk0p1"; fi
if test -z "${rootfstype}"; then setenv rootfstype "ext4"; fi
if test -z "${verbosity}"; then setenv verbosity "7"; fi

setenv bootargs "root=${rootdev} rootwait rootfstype=${rootfstype} ${consoleargs} consoleblank=0 loglevel=${verbosity} ubootpart=${partuuid} ${extraargs} ${extraboardargs}"
if test "${docker_optimizations}" = "on"; then setenv bootargs "${bootargs} cgroup_enable=memory swapaccount=1"; fi
printenv bootargs

# Load and boot FIT
echo "Loading FIT: ${prefix}k2b.itb -> ${kernel_addr_r}"
load ${devtype} ${devnum} ${kernel_addr_r} ${prefix}k2b.itb
echo "bootm (FIT)"
bootm ${kernel_addr_r}