![Kickpi Logo](https://www.kickpi.com/wp-content/uploads/2024/09/kickpi-logo-1.png)

![Status](https://img.shields.io/badge/status-active-success.svg)
![Docs](https://img.shields.io/badge/docs-foundation-lightgrey)
![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![Maintainer](https://img.shields.io/badge/maintainer-MattInnovates-orange)

KickPi K2B – GPL Kernel Reconstruction Project

> **“Open hardware isn’t something you’re given. It’s something you take back.”**

## ✅ Project Status: Active Reconstruction / GPL Restoration

This repository contains the **full reverse-engineering and reconstruction** of the KickPi K2B kernel after the vendor distributed Linux binaries without providing the corresponding GPL-complete source code.

This is not a hobby fork —  
this is a **compliance restoration effort** and a transition of ownership from *vendor-controlled firmware* to a *community-maintained platform kernel.*

---

## 🚩 What Happened

The vendor shipped:
- Linux **5.4.125**
- With a heavily customized Allwinner **sun50iw9 (H616)** BSP
- Plus proprietary WiFi/BT/GPU integrations
- And a full Device Tree describing the hardware

…but only released **headers**, not the real source.

Under GPLv2, kernel *headers are not source code.*

The purpose of this repository is to reconstruct — cleanly and transparently — the **actual kernel tree behind the distributed binaries**, establishing a **lawful upstream** the vendor failed to publish.

---

## ✅ Assets Already Recovered

| Asset | Source | Status |
|------|--------|--------|
| Upstream Linux 5.4.125 | kernel.org | ✅ |
| Running kernel config | live K2B | ✅ |
| Device Tree (.dtb → .dts) | live K2B | ✅ |
| System.map + kallsyms | live K2B | ✅ |
| Proprietary firmware list | vendor build | ✅ |
| Toolchain | gcc-11 aarch64 | ✅ |

This is enough to rebuild a reproducible kernel without vendor assistance.

---

## 🧠 Methodology

This reconstruction uses a **binary-to-source delta mapping strategy**:

| Layer | Description |
|------|-------------|
| L1 | Upstream vanilla kernel (GPL baseline) |
| L2 | Hardware enablement backported from vendor build |
| L3 | AEON enhancements & blob replacements |

Once feature parity is reached, proprietary components are either **rewritten**, **replaced**, or isolated into clearly licensed external modules.

GPL ambiguity → zeroed.

---

## 📍 Hardware Target

| Property | Value |
|---------|-------|
| Board | KickPi K2B |
| SoC | Allwinner H616 (sun50iw9) |
| Architecture | ARM64 |
| GPU | Mali G31 |
| WiFi/BT | AIC8800 |
| Vendor kernel | 5.4.125 |

---

## 🧩 Roadmap

| Stage | Description | Status |
|------|-------------|--------|
| 1 | Capture live system artifacts | ✅ |
| 2 | Create reconstruction workspace | ✅ |
| 3 | Import upstream tree | ✅ |
| 4 | Begin BSP mapping | 🔄 |
| 5 | First clean boot kernel | ⏳ |
| 6 | Replace or isolate blobs | ⏳ |
| 7 | Publish canonical source | ⏳ |

---

## 📜 Licensing Intent

This repository is GPLv2, consistent with the Linux kernel.

When this reconstruction is complete, **this** will become the *canonical*, publicly hosted, GPL-compliant kernel source for KickPi K2B hardware.

At that point:
- The community becomes upstream.
- Vendors become downstream.
- Kernel development is no longer a closed loop.

---

## Long-Term Vision

✅ Permanent GPL compliance  
✅ Reproducible builds  
✅ Vendor-independent maintenance  
✅ Real open platform instead of a black box  
✅ Foundation for future Arm-based Aeon OS images

> The objective is not just to *use* this board —  
> the objective is to **own** it.

---

More detailed technical docs will be added as reconstruction progresses.

*Last updated: October 2025*
