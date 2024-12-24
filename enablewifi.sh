
#!/bin/bash

# 检查是否为Deepin系统
if grep -q "deepin" /etc/os-release; then
    echo "当前系统是Deepin"
     # 修改 /etc/modprobe.d/blacklist-bcm43.conf，注释以下两行
    sudo sed -i '/blacklist brcm80211/ s/^/#/' /etc/modprobe.d/blacklist-bcm43.conf
    sudo sed -i '/blacklist brcmfmac/ s/^/#/' /etc/modprobe.d/blacklist-bcm43.conf
 
    # 将 brcmfmac 添加到 /etc/modules
    echo "brcmfmac" | sudo tee -a /etc/modules
 
    echo "操作完成！"

else
    echo "当前系统不是Deepin"
fi

