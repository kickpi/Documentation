# KickPi Documentation - File Structure

This document provides an overview of the file structure and organization of the KickPi Documentation repository.

## Repository Structure

```
Documentation/
├── .git/                    # Git version control directory
├── Boards/                  # Development board documentation
│   ├── Allwinner/          # Allwinner SoC based boards
│   │   ├── A133/           # A133 processor family
│   │   │   └── K5C/        # K5C development board
│   │   ├── H618/           # H618 processor family
│   │   │   ├── K2B/        # K2B development board
│   │   │   └── K2C/        # K2C development board
│   │   └── T113-S3/        # T113-S3 processor family
│   │       └── K4B/        # K4B development board
│   └── Rockchip/           # Rockchip SoC based boards
│       ├── RK3562/         # RK3562 processor family
│       │   └── K3/         # K3 development board
│       ├── RK3568/         # RK3568 processor family
│       │   ├── K1/         # K1 development board
│       │   └── K1B/        # K1B development board
│       ├── RK3576/         # RK3576 processor family
│       │   └── K7/         # K7 development board
│       └── RK3588/         # RK3588 processor family
│           └── K8/         # K8 development board
├── LICENSE                  # Repository license file
└── README.md               # Main repository documentation
```

## Directory Organization

### Root Level
- **README.md** - Main documentation and introduction to KickPi
- **LICENSE** - Repository license information
- **Boards/** - Contains all development board documentation

### Boards Structure
The `Boards/` directory is organized by SoC manufacturer and processor family:

#### Allwinner Products
- **A133/** - Allwinner A133 based boards
- **H618/** - Allwinner H618 based boards  
- **T113-S3/** - Allwinner T113-S3 based boards

#### Rockchip Products
- **RK3562/** - Rockchip RK3562 based boards
- **RK3568/** - Rockchip RK3568 based boards
- **RK3576/** - Rockchip RK3576 based boards
- **RK3588/** - Rockchip RK3588 based boards

### Board Models

Each processor family contains specific KickPi board models:

| SoC Family | Board Models | Description |
|------------|--------------|-------------|
| A133       | K5C          | Allwinner A133 development board |
| H618       | K2B, K2C     | Allwinner H618 development boards |
| T113-S3    | K4B          | Allwinner T113-S3 development board |
| RK3562     | K3           | Rockchip RK3562 development board |
| RK3568     | K1, K1B      | Rockchip RK3568 development boards |
| RK3576     | K7           | Rockchip RK3576 development board |
| RK3588     | K8           | Rockchip RK3588 development board |

## Navigation

To find documentation for a specific board:

1. Navigate to `Boards/`
2. Choose the SoC manufacturer (Allwinner or Rockchip)
3. Select the processor family (e.g., RK3588, H618)
4. Access the specific board model directory (e.g., K8, K2C)

Each board directory should contain:
- Technical specifications
- Getting started guides
- Hardware documentation
- Software examples
- Troubleshooting information

---

*Last updated: October 2025*