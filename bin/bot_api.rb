require 'telegram/bot'
require_relative '../lib/rubofit_api'

token = '<YOUR_BOT_TOKEN>'

Telegram::Bot::Client.run(token, logger: Logger.new($stderr)) do |bot|
  include RuboFitAPI

  bot.logger.info('Bot has been started')
  bot.listen do |message|
    case message.text
    when '/start'
      sleep(1)
      send_welcome(bot, message)
    when '/sleep'
      sleep(1)
      send_that('Plugged myself to nearst wall 🔌🤖.', bot, message)
    when '/remindme'
      remind_me(bot, message)
    when '/stop'
    when '/dad'
      sleep(1)
      send_dad(bot, message)
    when /@odcoder|omar|Omar/
      sleep(1)
      msg = 'My /dad 💙😏'
      send_that(msg, bot, message)
    when /\A\//
      msg = "That's not in my Code Base 💾🤖 \nTalk to /dad about adding a new function to me."
      send_that(msg, bot, message)
    else
      send_that('Machine Language Please 1️⃣0️⃣🤖', bot, message)
    end
  end
end
