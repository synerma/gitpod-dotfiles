#Oh My Zsh plugins to install
plugins="git colorize zsh-sntax-highlighting"

aliases='alias dcd="docker compose -f docker-compose.dev.yml"
alias dcdr="docker compose -f docker-compose.dev.yml run rails"
alias dct="docker compose -f docker-compose.test.yml"'

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Write plugins to .zshrc
sed -i "/^plugins/s/plugins=\(.*\)/plugins=\($plugins\)/g" /home/gitpod/.zshrc

#Write aliases to the plugin folder
echo $aliases >> /home/gitpod/.oh-my-zsh/custom/aliases.zsh

#Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/gitpod/.oh-my-zsh/custom/themes/powerlevel10k
#Write theme to .zshrc
sed -i "/^ZSH_THEME=\"/s/.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g" /home/gitpod/.zshrc

#Install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions /home/gitpod/.oh-my-zsh/custom/plugins/zsh-autosuggestions

#install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/gitpod/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


