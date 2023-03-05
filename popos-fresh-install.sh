hostnamectl set-hostname eugeniomoreira-pc
sudo apt update && sudo apt upgrade -y && sudo apt install snapd vim xclip -y
sudo apt-get purge firefox -y
sudo snap install brave discord postman rambox firefox
sudo snap install code --classic
sudo snap install sublime-text --classic
ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_ed25519
xclip -sel c < ~/.ssh/id_ed25519.pub
mkdir ~/development && cd ~/development && mkdir repositories && cd repositories
git clone git@github.com:eugeniojava/dotfiles.git && cd dotfiles
cd git && cp -r . ~/.
curl -s "https://get.sdkman.io" | bash
exec bash
sdk install java 17.0.6-tem
mkdir ~/tmp && cd ~/tmp && curl https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz -o jetbrains-toolbox.tar.gz && tar -xf jetbrains-toolbox.tar.gz
cd jetbrains-toolbox-1.27.3.14493 && ./jetbrains-toolbox
echo "export PATH=$PATH:/home/eugeniomoreira/.local/share/JetBrains/Toolbox/scripts" >> ~/.bashrc
