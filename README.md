![Kickpi Logo](https://www.kickpi.com/wp-content/uploads/2024/09/kickpi-logo-1.png)

![Status](https://img.shields.io/badge/status-active-success.svg)
![Docs](https://img.shields.io/badge/docs-foundation-lightgrey)
![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![Maintainer](https://img.shields.io/badge/maintainer-MattInnovates-orange)

KickPi K2B Kernel Reconstruction Project

## ✅ Project Status: Active Reconstruction / GPL Restoration

This repository documents the complete, **public reconstruction of the KickPi K2B kernel** after the vendor distributed binaries without providing corresponding GPL-compliant source code.

The goal of this project is not just to build a custom kernel — it is to **restore GPL transparency**, produce an openly maintained board-support package, and ensure that development for the K2B platform is no longer locked behind incomplete or hidden sources.

---

## 🧠 Why This Project Exists

The vendor shipped:
- A Linux 5.4.125-based kernel
- With custom Sunxi (Allwinner H616 / sun50iw9) hardware enablement
- Proprietary driver blobs (WiFi/Bluetooth, GPU pipeline, etc.)
- A full DTS-based hardware description
- **Without** the corresponding GPL-complete source tree

This is a textbook GPL compliance gap.

This repository is the community response:
we are **reconstructing the entire BSP from live system artifacts**, mapping each vendor modification back into a clean upstream tree.

When finished, this repo *will be the canonical, **lawfully complete** source for the KickPi K2B kernel* — something the vendor *should* have provided, but did not.

---

## 📦 Collected Assets So Far

| Asset | Status |
|------|--------|
| Upstream kernel source (Linux 5.4.125) | ✅ |
| Extracted running kernel config | ✅ |
| Device Tree from live system (.dtb → .dts) | ✅ |
| Symbol maps (System.map & kallsyms) | ✅ |
| Proprietary firmware/mods catalogued | ✅ |
| Cross-compilation toolchain | ✅ |

This is enough to legally and technically reassemble a buildable, reproducible kernel — without vendor cooperation.

---

## 🔬 Reconstruction Approach

This project uses a **binary-to-source correlation methodology**, broken down into three layers:

| Layer | Origin | Purpose |
|------|--------|----------|
| L1 | Upstream Linux 5.4.125 | Clean GPL baseline |
| L2 | Reverse-engineered vendor deltas | Hardware support parity |
| L3 | AEON custom enhancements | Improvements + de-proprietarization |

Once parity is achieved, vendor blobs can be **replaced with clean drivers or upstream equivalents**, resulting in a legally sound and community-owned kernel.

---

## 📍 Hardware Target

| Property | Value |
|---------|------|
| Board | KickPi K2B |
| SoC | Allwinner H616 (sun50iw9) |
| Architecture | ARM64 |
| Vendor Kernel | 5.4.125 |
| GPU | Mali G31 |
| WiFi | AIC8800 (proprietary) |

---

## 🛠️ Current Milestone

✅ Workspace / source baseline complete
🔄 Begin BSP layer reconstruction
⏳ Bring-up of clean DRM vs vendor DISP2 path (decision pending)
⏳ Proprietary binary driver replacement analysis

---

## 📢 Intent & Licensing Posture

This repository exists to **fulfill GPL obligations** that the vendor failed to meet.

Once reconstruction is complete:

- The board will have a *publicly maintained GPL-complete kernel*
- Future maintenance will not depend on vendor silence
- The K2B becomes a **first-class open platform**

This is not a fork “for fun” — this is a **correction of a compliance failure** and the establishment of **real ownership** over the platform.

---

## 🌐 Roadmap (High Level)

1. ✅ Extract live kernel → capture config/DT/symbols
2. ✅ Import upstream source → seed K2B workspace
3. 🔄 Re-map vendor deltas → BSP layer
4. ⏳ Initial bootable clean kernel
5. ⏳ Replace binary components where possible
6. ⏳ Finalize and publish canonical K2B kernel tree

---

## ⚖️ License

This project is released under **GPLv2**, consistent with the Linux kernel licensing model.

---

More technical breakdowns will be added as reconstruction progresses.

> *“Open hardware isn’t given — it’s reclaimed.”*

*Last updated: October 2025*
