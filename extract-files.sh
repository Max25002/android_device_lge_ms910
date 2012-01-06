#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=esteem
MANUFACTURER=lge

mkdir -p ../../../$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/gps.conf ../../../$MANUFACTURER/$DEVICE/proprietary/gps.conf
adb pull /system/bin/BCM4329B1_002.002.023.0589.0634.hcd ../../../$MANUFACTURER/$DEVICE/proprietary/bcm4329.hcd
adb pull /system/etc/firmware/yamato_pfp.fw ../../../$MANUFACTURER/$DEVICE/proprietary/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../$MANUFACTURER/$DEVICE/proprietary/yamato_pm4.fw
adb pull /system/lib/egl/libEGL_adreno200.so ../../../$MANUFACTURER/$DEVICE/proprietary/libEGL_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../$MANUFACTURER/$DEVICE/proprietary/libGLESv2_adreno200.so
adb pull /system/lib/libGLESv1_CM.so ../../../$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM.so
adb pull /system/lib/libGLESv2.so ../../../$MANUFACTURER/$DEVICE/proprietary/libGLESv2.so
adb pull /system/lib/hw/gralloc.msm7k.so ../../../$MANUFACTURER/$DEVICE/proprietary/gralloc.msm7k.so
adb pull /system/lib/libIMGegl.so ../../../$MANUFACTURER/$DEVICE/proprietary/libIMGegl.so
adb pull /system/lib/libinvensense_mpl.so ../../../$MANUFACTURER/$DEVICE/proprietary/libinvensense_mpl.so
adb pull /system/lib/libpvr2d.so ../../../$MANUFACTURER/$DEVICE/proprietary/libpvr2d.so
adb pull /system/lib/libpvrANDROID_WSEGL.so ../../../$MANUFACTURER/$DEVICE/proprietary/libpvrANDROID_WSEGL.so
adb pull /system/lib/libPVRScopeServices.so ../../../$MANUFACTURER/$DEVICE/proprietary/libPVRScopeServices.so
adb pull /system/lib/libsec-ril.so ../../../$MANUFACTURER/$DEVICE/proprietary/libsec-ril.so
adb pull /system/lib/libsrv_init.so ../../../$MANUFACTURER/$DEVICE/proprietary/libsrv_init.so
adb pull /system/lib/libsrv_um.so ../../../$MANUFACTURER/$DEVICE/proprietary/libsrv_um.so
adb pull /system/lib/libusc.so ../../../$MANUFACTURER/$DEVICE/proprietary/libusc.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:obj/lib/libsecril-client.so

# All the blobs necessary for esteem
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/fRom:system/bin/fRom \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pvrsrvinit:system/bin/pvrsrvinit \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sirfgps.conf:system/etc/sirfgps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4330.hcd:system/firmware/bcm4330.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ducati-m3.bin:system/firmware/ducati-m3.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpn544_fw.so:system/firmware/libpn544_fw.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.omap4.so:system/lib/hw/gps.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.omap4.so:system/lib/hw/gralloc.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libglslcompiler.so:system/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libIMGegl.so:system/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libinvensense_mpl.so:system/lib/libinvensense_mpl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvr2d.so:system/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_init.so:system/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_um.so:system/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libusc.so:system/lib/libusc.so


EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),esteem)
LOCAL_PATH:=\$(call my-dir)

endif

EOF

./setup-makefiles.sh
