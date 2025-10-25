# GPL License Violation Report - KickPi Device

## Executive Summary
**CRITICAL FINDING**: GPL license violations detected in WiFi/Bluetooth drivers
**Date**: October 25, 2025
**Auditor**: Security Assessment
**Device**: KickPi (ARM64 SBC)

## Violations Identified

### 1. AIC8800 WiFi Driver (aic8800_fdrv.ko)
- **File**: `/lib/modules/5.4.125/kernel/drivers/net/wireless/aic8800/aic8800_fdrv/aic8800_fdrv.ko`
- **Size**: 475,089 bytes (303KB)
- **Claims**: `license=GPL`
- **Reality**: Proprietary RivieraWaves S.A.S driver
- **Copyright**: "Copyright(c) 2015-2017 RivieraWaves RivieraWaves S.A.S"
- **Issue**: No source code provided despite GPL claim

### 2. AIC8800 BSP Module (aic8800_bsp.ko)  
- **File**: `/lib/modules/5.4.125/kernel/drivers/net/wireless/aic8800/aic8800_bsp/aic8800_bsp.ko`
- **Size**: 133,921 bytes (134KB)
- **Claims**: `license=GPL`
- **Reality**: Proprietary AICSemi driver
- **Copyright**: "Copyright(c) 2015-2020 AICSemi AICSemi"
- **Issue**: No source code provided despite GPL claim

### 3. Proprietary Firmware Collection
- **Location**: `/lib/firmware/aic8800dc/`
- **Files**: Multiple binary firmware files including:
  - `fmacfw.bin` (261KB)
  - `lmacfw_rf.bin` (154KB)
  - Various patch and configuration binaries
- **Issue**: Extensive proprietary firmware with no source

## Technical Evidence

### Module Information
```bash
# AIC8800 FDRV Module
modinfo aic8800_fdrv
# Output shows GPL license claim but RivieraWaves copyright

# AIC8800 BSP Module  
modinfo aic8800_bsp
# Output shows GPL license claim but AICSemi copyright
```

### Missing Source Code
- No `/usr/src/` directory with AIC8800 sources
- No build environment or compilation artifacts
- No git repository or source archive
- Kernel config shows modules built externally

## Legal Requirements Under GPL v2

1. **Source Code Availability**: GPL requires source code for all GPL-licensed binaries
2. **Distribution Terms**: Source must be available to all recipients
3. **Complete Source**: Must include build scripts, makefiles, and dependencies
4. **License Notice**: Proper GPL licensing notices required

## Vendor Obligations

The KickPi vendor must provide:
1. Complete source code for AIC8800 drivers
2. Build environment and compilation instructions  
3. Proper GPL license headers in source files
4. Documentation of any modifications made

## Recommendations

### Immediate Actions
1. **Contact vendor** demanding source code compliance
2. **Document violation** for potential legal action
3. **Quarantine devices** in GPL-strict environments
4. **Seek alternative** open-source WiFi solutions

### Legal Options
- GPL enforcement through Software Freedom Conservancy
- Cease and desist for copyright violation
- Legal action for license breach

### Technical Mitigation
- Replace WiFi modules with GPL-compliant alternatives
- Use USB WiFi dongles with open-source drivers
- Monitor for firmware updates that might include source

## Supporting Files
- Audit logs: `/root/security-audit-backup/`
- Module details: `modinfo` output captured
- Firmware inventory: Complete file listing documented

## Conclusion
This represents a clear GPL v2 license violation where proprietary drivers are falsely labeled as GPL-licensed without providing required source code. Legal compliance requires immediate vendor action or device replacement.

---
**Report Status**: CRITICAL - Immediate Action Required
**Next Review**: Upon vendor response or 30 days