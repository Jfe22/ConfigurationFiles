########################################
#            INJECT SCRIPT             #
#  RUN THIS SCRIPT TO ADD THIS CONFIG  # 
#    TO YOUR HOME DIR AUTOMATICALLY    #
########################################

cat ./.zshrc > ~/.zshrc
cat ./.tmux.conf > ~/.tmux.conf
mkdir -p ~/.config/nvim && cat ./.config/nvim/init.vim > ~/.config/nvim/init.vim
