# KickPi Hardware Analysis Report

## Device Information
- **Model**: KICKPI K2B  
- **SoC**: Allwinner H616 (sun50iw9)
- **Architecture**: ARM64 (aarch64)
- **Bootloader**: U-Boot 2018.07 (Sep 01 2025)

## Storage Layout
```
/dev/mmcblk1 (14.43 GiB) - Primary Storage
├── Bootloader: sectors 16-8191 (U-Boot + SPL)
└── mmcblk1p1: sectors 40960-29949951 (rootfs, ext4)

/dev/mmcblk0 (7.23 GiB) - Secondary Storage  
└── mmcblk0p1: sectors 43008-14974975 (backup system)
```

## Boot Process
1. **SPL (Secondary Program Loader)**: Located at sector 16
2. **U-Boot**: Loads from sector 2048  
3. **Device Tree**: `/boot/dtb/sunxi/sun50iw9-kickpi-k2b.dtb`
4. **Kernel**: `/boot/vmlinuz-5.4.125`
5. **Initrd**: `/boot/uInitrd-modules`

## Hardware Peripherals
- **UART**: 6 serial ports (ttyAS0-5)
- **PWM**: 6 PWM controllers  
- **MMC**: 2 SD/MMC controllers
- **Ethernet**: 2 GMAC controllers (gmac0, gmac1)
- **I2C**: 6 TWI controllers
- **SPI**: 2 SPI controllers
- **Display**: TV encoder, LCD controller, HDMI
- **Video**: Hardware video encoder/decoder

## GPIO Configuration
- **Pin Controller**: allwinner,sun50iw9-pinctrl
- **Base Address**: 0x300b000
- **GPIO Banks**: PA, PB, PC, PD, PE, PF, PG, PH, PI
- **Power Supplies**: vcc-pf-supply, vcc-pfo-supply, vcc-pg-supply

## Key Boot Parameters
```bash
console=ttyAS0,115200
rootdev=/dev/mmcblk1p1
rootfstype=ext4
verbosity=7
disp_mode=1080p60
fb0_width=1920
fb0_height=1080
```

## Extracted Files
- **Device Tree Source**: `/root/sun50iw9-kickpi-k2b.dts`
- **Kernel Config**: `/root/kernel-config-5.4.125`
- **Device Tree Binary**: `/root/sun50iw9-kickpi-k2b.dtb`
- **Boot Script**: `/boot/boot.cmd`

## Custom OS Development Notes
1. U-Boot expects bootloader at specific sectors
2. Device tree is essential for hardware initialization
3. Kernel 5.4.125 config provides module/driver requirements
4. AIC8800 WiFi drivers are proprietary (GPL violation)
5. Boot script can be customized via mkimage