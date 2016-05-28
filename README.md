Shahbot
=======
_Shahbot is based on/forked from [sactage/chatbot-rb](https://github.com/sactage/chatbot-rb)_

Shahbot (shah-bot (shabbat)) is a plugin-based bot built from chatbot-rb. It is written in ruby and is designed to meet the needs of a single person. Using this software is not advised unless you are sure that you would benefit from doing so otherwise I recommend you check out the chatbot-rb repo and customize it from there.

Pull Requests / Issues
======================
If you want to create a PR or open an issue here on GitHub, *that is fine* (and most definitely encouraged!) - however, *please ping me with `@sactage` somewhere in your issue/PR description*. GitHub unfortunately *does not provide a way for me to get notifications of new PRs/issues via e-mail*, unless I am pinged with `@sactage`. Also, while not required, it would be helpful to me if you left your Wikia username so I can contact you further if need be.

Installation
============
To install and run Shahbot you will need these things:
- SQLite3 (3.10.2)
- Ruby (2.2.4)
 - `mediawiki-gateway`
 - `httparty`
 - `sqlite3`

To fetch the required software on Windows please install [scoop](http://scoop.sh/) and then run the following command:
`scoop install ruby sqlite3`

To fetch the required gems you will have to run the following command:
`gem install sqlite3 httparty mediawiki-gateway`

After you have installed everything listed above you will then need to edit data/config.yaml and put in the username of the bot, its password, and the name of the wiki you are going to want the bot to join the chat of (**community**.wikia.com).

Next you are going to want to initialize the database so that our events and logs can be stored. Now, it's important that you realize that the following command will only initialize the database but will not initialize it in a way that is useable by every plugin. For this you will need to refer to each plugin's initdb.rb if you want to allow it to store information in the database.

To initialize the database you will need to run the following command:
`ruby scripts/initdb.rb`

While some scripts may allow you to not store data in the database and will instead store data in a regular file there are some that will not. It is important to check each plugin's documentation for more information before choosing to not initialize the database for that particular plugin.

Additionally, if you want to add or remove plugins please edit the main.rb file accordingly.

After your plugins are set and your configuration looks good you can run the bot using the following command:
`ruby main.rb`
