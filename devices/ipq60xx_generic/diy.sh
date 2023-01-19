#!/bin/bash
shopt -s extglob

rm -rf package/system/opkg && mv -f feeds/kiddin9/opkg package/system/
rm -rf package/feeds/kiddin9/{firewall,rtl*,nft-fullcone,fullconenat} package/kernel/mt76 toolchain/musl

rm -rf toolchain/musl
svn co https://github.com/openwrt/openwrt/branches/openwrt-22.03/toolchain/musl toolchain/musl

svn co https://github.com/coolsnowwolf/openwrt-gl-ax1800/trunk/package/network/services/fullconenat feeds/kiddin9/fullconenat

rm -rf devices/common/patches/{imagebuilder.patch,iptables.patch,targets.patch,kernel-defaults.patch,disable_flock.patch}


