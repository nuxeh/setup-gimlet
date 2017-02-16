git config --global user.email 'edward.cragg@codethink.co.uk'
git config --global user.name 'Edward Cragg'

git config --global alias.ct commit
git config --global alias.st status
git config --global alias.co checkout

git config --global core.editor vim

cat >> ~/.bash_aliases << EOF
alias gg="git grep"
alias gs="git status"
alias gc="git diff --cached"
alias gd="git diff"
EOF

. ~/.bashrc

# SMTP support
read -p 'SMTP username? ' username
read -p 'SMTP server? ' server
git config --global sendemail.smtpserver $server
git config --global sendemail.smtpserverport 587
git config --global sendemail.smtpuser $username
git config --global sendemail.smtpencryption tls
