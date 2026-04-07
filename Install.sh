#!/bin/bash
# تحديث المستودعات وتثبيت النواة (Kernel) والتعريفات
apt-get update
apt-get install -y linux-image-amd64 xorg xinit jwm feh pcmanfm papirus-icon-theme fonts-roboto 

# تعريفات Intel الخاصة بـ HP G62 والـ Wi-Fi
apt-get install -y xserver-xorg-video-intel firmware-iwlwifi intel-microcode firmware-linux-nonfree

# إعداد تشغيل الواجهة والخلفية لكل المستخدمين الجدد
echo "feh --bg-fill ~/.wallpaper.jpg &" > /etc/skel/.xinitrc
echo "exec jwm" >> /etc/skel/.xinitrc

# حماية ملفات المشروع في مجلد التحميلات
mkdir -p /etc/skel/Downloads/MyProject_Backup
# منع الحذف بالخطأ للمجلد
chmod 555 /etc/skel/Downloads/MyProject_Backup

echo "Installation Clean and Complete!"
