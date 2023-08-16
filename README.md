# OpenWRT-CI
云编译OpenWRT固件

LEDE源码：
https://github.com/coolsnowwolf/lede

IMMORTALWRT源码：
https://github.com/immortalwrt/immortalwrt

# 固件简要说明：

固件每天早上4点自动编译。

固件信息里的时间为编译开始的时间，方便核对上游源码提交时间。

X64系列，包含X64、X86。

Redmi-AX6因无线驱动问题，暂时维持源码版本在20230501。

固件在默认组件的基础上增加了 OpenClash、OpenVPN、iStore、QuickStart、DDNS、turboacc、v2ray-server，去除了我用不到的 smaba、zerotier、ipsec、adbyby-plus、accesscontrol、vsftpd 组件。

# 目录简要说明：

Depends.txt——环境依赖列表

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置

  -- General.txt 为通用配置文件，用于设定各平台都用得到的插件。

  -- 其它 txt 为各平台主要配置文件，用于设定机型及额外插件。
