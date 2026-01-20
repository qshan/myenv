sudo apt update
sudo apt install git curl wget rename htop net-tools tree vim openssh-server
#sudo apt install acpi-call-dkms lm-sensors
sudo apt install libfuse2 thinkfan
#todo?#sudo apt install tp-smapi-dkms
sudo timedatectl set-timezone Asia/Shanghai
sudo apt install lubuntu-desktop lubuntu-default-settings lubuntu-update-notifier

sudo apt install acpi-call-dkms lm-sensors

sudo apt install tlp tlp-rdw
sudo systemctl enable tlp
sudo tlp start

sudo apt install cpufrequtils
#??todo#sudo cpupower frequency-set -g performance

# 安装中文语言支持
sudo apt install language-pack-zh-hans language-pack-gnome-zh-hans

# 设置系统语言环境
#???todo#sudo update-locale LANG=zh_CN.UTF-8
sudo dpkg-reconfigure locales
sudo apt install language-pack-zh-hans language-pack-gnome-zh-hans fonts-noto-cjk fonts-wqy-microhei
sudo apt install fcitx5 fcitx-frontend-gtk3 fcitx-pinyin fcitx-rime

# 安装Fcitx5输入法框架
sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-frontend-qt5 fcitx5-module-xorg fcitx5-material-color
#fcitx5-frontend-gtk3 fcitx5-frontend-gtk2
sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-config-qt fcitx5-frontend-gtk3 fcitx5-frontend-qt5 fcitx5-material-color fonts-noto-cjk
sudo fc-cache -fv

# 安装拼音输入法
sudo apt install fcitx5-pinyin fcitx5-rime

cat >> ~/.profile << 'EOF'

# 输入法配置
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
EOF

mkdir -p ~/.config/autostart
cat > ~/.config/autostart/fcitx5.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=Fcitx5 Input Method
Exec=fcitx5 -d
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

sudo apt install fonts-noto-cjk fonts-wqy-microhei fonts-wqy-zenhei fonts-arphic-ukai fonts-arphic-uming fonts-droid-fallback

cat >> ~/.xprofile << 'EOF'
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
EOF

im-config
fcitx5-configtool &
#在配置工具中：
#  点击左下角"+"号
#  取消勾选"Only Show Current Language"
#  找到"Pinyin"（中文 → 拼音）
#  点击"OK"添加
#  确保"Pinyin"是启用的（非灰色状态）

sudo dpkg -i /data/tools/chrome/google-chrome-stable_current_amd64.deb

#source  set.git.env
git clone  git@github.com:qshan/myenv.git ~/data/myenv

ln -s /home/fshan/data/_myssh ~/.ssh

ln -s ~/data/myenv/_mycshrc ~/.cshrc
ln -s ~/data/myenv/_myvimrc ~/.vimrc
ln -s /home/fshan/data/myenv/_vim ~/.vim

sudo apt install fuse
ls /data1/tools/vim/GVim-v9.1.1989.glibc2.34-x86_64.AppImage

#todo?#export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
sudo apt install clang clangd clang-format clang-tidy clang-tools

sudo apt install gcc g++ clang cmake scons build-essential
#sudo apt install python-dev python3-dev
sudo apt install gcc-multilib g++-multilib
#gcc-source
sudo apt install clang clangd clang-format clang-tidy clang-tools
#sudo apt install clang-11 clangd-11 clang-format-11 clang-tidy-11 clang-tools-11
#sudo apt install clang-12 clangd-12 clang-format-12 clang-tidy-12 clang-tools-12
#sudo apt install clang-15 clangd-15 clang-format-15 clang-tidy-15 clang-tools-15
#sudo apt install clang-18 clangd-18 clang-format-18 clang-tidy-18 clang-tools-18

sudo apt install fcitx5-pinyin fcitx5-rime

sudo apt install zram-config
sudo systemctl restart zram-config.service
# zramswap

sudo apt install bear ninjia-build
