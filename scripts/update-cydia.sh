# 删除原来的 package
rm Packages; rm Packages.gz; rm Packages.bz2;

# 生成新的package
dpkg-scanpackages debs /dev/null > Packages
tar zcvf Packages.gz Packages
bzip2 -k Packages Packages.bz2
