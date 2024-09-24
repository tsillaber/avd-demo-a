cd /home/coder/project/labfiles
git clone https://github.com/tsillaber/avd-demo-a.git
cd ci-workshops-avd
git config --global user.name "Thomas Sillaber"
git config --global user.email "ts@arista.com"
pip3 config set global.break-system-packages true
pip3 config set global.disable-pip-version-check true
pip3 install "pyavd[ansible-collection]==4.10.0"
ansible-galaxy collection install -r requirements.yml
cd labs/L3LS_EVPN
export LABPASSPHRASE=`cat /home/coder/.config/code-server/config.yaml| grep "password:" | awk '{print $2}'`
echo $LABPASSPHRASE

