#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 解决luci-app-passwall源码缺失
git clone -b luci --single-branch https://github.com/xiaorouji/openwrt-passwall package/passwall

# 解决helloworld源码缺失
wget 'https://github.com/tpwonder/OpenWrt-GeeGo-HC5611/raw/main/myfiles/passwall.zip' --no-check-certificate && unzip -o passwall.zip && rm -f passwall.zip
