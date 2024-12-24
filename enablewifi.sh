
#!/bin/bash

# 检查是否为Deepin系统
if grep -q "deepin" /etc/os-release; then
    echo "当前系统是Deepin"
    
    # 修改 /etc/modprobe.d/blacklist-bcm43.conf 文件
    sudo sed -i 's/^#blacklist brcm80211/blacklist brcm80211/' /etc/modprobe.d/blacklist-bcm43.conf
    sudo sed -i 's/^#blacklist brcmfmac/blacklist brcmfmac/' /etc/modprobe.d/blacklist-bcm43.conf
    
    # 将 brcmfmac 添加到 /etc/modules 文件
#    echo "brcmfmac" | sudo tee -a /etc/modules
else
    echo "当前系统不是Deepin"
fi

