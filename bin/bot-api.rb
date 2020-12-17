require 'telegram/bot'

token = '1489941272:AAG9icI_Z7BA0DMQTdD9VtqS8T9IllrRdaA'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      msg = "Hello, #{message.from.first_name}."
      bot.api.send_message(chat_id: message.chat.id, text: msg)
      sleep(2)
      msg = "#{message.from.last_name}, with your well and my assistance, we will have a healthy day togther."
      bot.api.send_message(chat_id: message.chat.id, text: msg)
      sleep(2)
      msg = 'I will remind you every 45 min to make an activity for 5 min'
      bot.api.send_message(chat_id: message.chat.id, text: msg)
      sleep(2)
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end
