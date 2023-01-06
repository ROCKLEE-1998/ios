# 要使用 zst 上的 xz 压缩重新打包存档：
mkdir frida_16.0.8_iphoneos-arm
cd frida_16.0.8_iphoneos-arm
ar -x ../frida_16.0.8_iphoneos-arm.deb
zstd -d *.zst
xz *.tar
ar r frida_16.0.8_iphoneos-arm-repacked.deb debian-binary control.tar.xz data.tar.xz
# SCP frida_16.0.8_iphoneos-arm-repacked.deb 存档到你的设备，然后运行 dpkg -i：
# dpkg -i frida_16.0.8_iphoneos-arm-repacked.deb