echo "Now we will install telegram anki bot"
sudo apt install python3-pip
echo ""

echo "Python3 packages: selenium python-telegram-bot pronouncing"
pip3 install selenium python-telegram-bot pronouncing
echo ""

echo "Now let's install Chromewebdriver"
wget https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver
sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
echo ""

echo "Now let's install trans worto"
git clone git@github.com:soimort/translate-shell.git
cd translate-shell/
make
sudo make install
echo ""

cd ..
echo "Now I will install the repo"
git clone git@github.com:timothy988/ankii.git
cd ankii/src
mkdir data log
echo "Insert telegram bot token: "
read -p 'TelegramTokenId: ' token
echo "token_id = '$token'" > private_conf.py
echo ""

echo "Now I will setup chrome binary"
echo "chrome_binary_location='/usr/bin/google-chrome'" >> private_conf.py

echo ""

echo "TELEGRAM ANKI BOT INSTALLED"

exit
