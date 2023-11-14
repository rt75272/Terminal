#########################################
# Initial setup for new Debian OS.
#
# Installs my commonly used packages.
#
# Usage:
#   $ chmod +x setup.sh
#   $ ./setup.sh
#########################################

# Check for initial updates
sudo apt update && sudo apt -y upgrade

# Languages
sudo apt -y install php8.2
sudo apt -y install postgresql
sudo apt -y install php-pgsql
sudo apt -y install default-jdk
sudo apt -y install nodejs


# Virtual environment
sudo apt -y install virtualenv
# Create new environment
#   $ virtualenv hal9000env
# Activate new environment
#   $ source /home/bob/hal9000env/bin/activate
# Run python requirements.txt installs 
#   $ cd ~/python_repo
#   $ pip install -r requirements.txt
# Shutdown new environment
#   # deactivate

# Jupyter
sudo apt -y install python3 python3-dev python3-venv python3-pip
python3 -m venv myenv
source myenv/bin/activate
pip install --upgrade pip
pip install jupyter

# Terminal tools
sudo apt -y install screenfetch
sudo apt -y install redshift
sudo apt -y install speedtest-cli
sudo apt -y install htop
sudo apt -y install wget
sudo apt -y install snapd
sudo apt -y install python3-pip
sudo apt -y install vlc
sudo apt -y install xclip
sudo apt -y install mcrypt

# Random goodies
sudo apt -y install sl
sudo apt -y install cmatrix
sudo apt -y install fortune
sudo apt -y install lolcat
sudo apt -y install figlet
sudo apt -y install cowsay
sudo apt -y install rig

# Check for any additional updates and clean up.
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove