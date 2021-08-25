# ankigenbot
[@ankigen_bot](https://t.me/ankitimothybot), Telegram bot to automatically generate and upload anki cards to [ankisrs.net](ankisrs.net). 

Anki is a very effective program to learn vocabulary, but anki does not have any way to **generate cards automatically**. Given a word in English, Spanish, French, German or Italian this bot will send you definitions with sentence examples and with a tap you can add them to your anki deck. 

Anki + [@ankigen_bot](https://t.me/ankitimothybot) is the best way to learn vocabulary: ___Send the bot every word you do not understand when you are reading, studying or interacting with people, it will not take you time and anki will make sure you do not ever forget all those words.___

## Features

+ Generate flashcards with definitions and examples for English, Spanish, French, German and Italian.
    + The word from the example is removed. In English, regular derivatives of the words are removed.

+ Automatically upload the cards to the deck of your anki account you select.

+ Generate the cards with the front/back fields swapped with `/swap`. Definition is front by default.

+ Include the pronunciation of the word in the flashcard with `/ipa` in case that the word is in English. Disabled by default.

---

If you want [@ankigen_bot](https://t.me/ankitimothybot) to support another language, you can open an issue and point me to a hopefully nice, free and simple dictionary for that language.

![image3](https://github.com/damaru2/ankigenbot/blob/master/.assets/image3.png)

## Write a word and select the definitions you want

<img src="https://github.com/timothy988/ankii/blob/main/.assets/image1.png" width="650">

<img src="https://github.com/timothy988/ankii/blob/main/.assets/image2.png" width="650">

<img src="https://github.com/timothy988/ankii/blob/main/.assets/image4.jpg" width="450">

---



## Automatic Installation
For execusting this software, just run this script below
+ Run this script in a terminal
```bash
wget https://raw.githubusercontent.com/timothy988/ankii/main/botinstall.sh
chmod u+x botinstall.sh
./botinstall.sh
cd ankii
python3 src/ankigen_bot.py
```
---

## Manual Installation
For executing this code, you will need to have:

+ The following python libraries: sqlite3, selenium, the telegram-bot libraries and pronouncing. For instance, with pip it would be
```
pip3 install selenium python-telegram-bot pronouncing
```

+ To install Chromewebdriver past this script in terminal
```bash
wget -N https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver
sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
```



+ [translate shell](https://github.com/soimort/translate-shell/), follow the instructions in the repository for installation.

+ Create a file called `private_conf.py` with a variable `token_id` initialized to the toked_id of your telegram bot. You also have to create in the root directory two folders called `data` and `log`. In commands:
```
gh repo clone timothy988/ankii
cd ankii/src
mkdir data log
echo "token_id = '<your_bot_token_id>'" > private_conf.py
```

+ Chrome (or Chromium). Add a variable in `src/private_conf.py` called `chrome_binary_location` and add the path so it points to where your Chrome/Chromium binary file is. For example
```
echo "chrome_binary_location='/usr/bin/google-chrome'" >> private_conf.py
```

Once everything is installed you can run the bot from the root directory:
```
python3 src/ankigen_bot.py
```
