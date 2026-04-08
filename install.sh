#!/bin/bash
# تحديث المستودعات وتثبيت التعريفات والواجهة
apt-get update
apt-get install -y xorg xinit jwm pcmanfm papirus-icon-theme fonts-roboto 

# تعريفات Intel الخاصة بـ HP G62 والـ Wi-Fi
apt-get install -y xserver-xorg-video-intel firmware-iwlwifi intel-microcode firmware-linux-nonfree

# إعداد تشغيل الواجهة (JWM فقط)
echo "exec jwm" > /etc/skel/.xinitrc

# حماية ملفات المشروع في مجلد التحميلات
mkdir -p /etc/skel/Downloads/MyProject_Backup
chmod 555 /etc/skel/Downloads/MyProject_Backup

echo "Installation Clean and Complete without Wallpaper!"
