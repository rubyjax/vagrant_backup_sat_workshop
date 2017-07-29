echo "Installing RVM."
# Accept the GPG key for RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable
