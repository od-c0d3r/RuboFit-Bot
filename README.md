<img src="assets/screenshot.gif" width="300px" align="right">

Ending the week with a back pain or/with a headache had me to think about this so often and since lately i learned how to make a telegram bot inspired by [Microverse](https://www.microverse.org/) i thought this might be a good idea to practice my Rubies and Reading documentaions.

RuboFit is a Telegram bot crafted with Ruby and [Telegram Bot API](https://core.telegram.org/bots/api) along with [atipugin/telegram-bot-ruby](https://github.com/atipugin/telegram-bot-ruby)

### Features

Reminds you to break your inactivity during your coding sessions and other healthy stuff related to developers.

### Developmet

Try the bot by adding [@RuboFitBot](https://telegram.me/RuboFitBot) to your telegram

#### In-Chat Commands

  - /start - Booting up

  - /remindme - Starting Reminders
    - Every 40 mins reminds you to break your idle state
    - Reminds you to drink water every so often
  - /stop - Aborting Reminders

  - /sleep - Puts RuboFit to sleep.

  - /dad - Shows RuboFit's Dad infos

  - /help - Shows comms list

<img src="assets/RuboFit.png" width="300px" align="right">

Fork the repo to start development



its always satisfying to make the code a little bit nicer so i made a simple API build obon [atipugin/telegram-bot-ruby](https://github.com/atipugin/telegram-bot-ruby)

#### Available methods

`send_that('text', bot, message)` just change `'text'` to whatever you want to send a message

`send_welcome(bot, message)` grouping punch of `send_that` to welcome the user

`send_dad(bot, message)` shows your contact information

`remind_me(bot, message)` Made for [@RuboFitBot](https://telegram.me/RuboFitBot)

### Future features 

- Give power to humans to assign their reminders periods.
- Adding some cool AI Chatting experience with the humans.
- Refactoring `remind_me` to be more readable.
- Adding games to play Vs Bot.
- Improve Documentation. 
- Pushing info about 5 min office/desk workouts you can do anywhere.
- Integrate wakatime API for developer daily coding session analysis when requested by developer
