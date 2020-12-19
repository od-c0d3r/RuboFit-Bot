module RuboFitAPI
  def send_that(that, bot, message)
    bot.api.send_message(chat_id: message.chat.id, text: that)
  end

  def send_welcome(bot, message)
    msg = "Hey, #{message.from.first_name}."
    send_that(msg, bot, message)
    sleep(2)
    msg = 'With your will and my long-term memory, we can develop a healthy working routine. 💙♻'
    send_that(msg, bot, message)
    sleep(4)
    msg = 'I will remind you every 40 min to break your inactivity 🚴'
    send_that(msg, bot, message)
    sleep(4)
    msg = 'Also I will remind you every 1 hour to take a sip of water 💧'
    send_that(msg, bot, message)
  end

  def send_dad(bot, message)
    msg = "You can find my /dad hanging around at \nGitHub : https://github.com/od-c0d3r or \nTwitter : https://twitter.com/od_coder"
    send_that(msg, bot, message)
  end

  def remind_me(bot, message)
    send_that('ℹ Reminder 🟢ON', bot, message)
    sleep(4)
    send_that('🤖🦾 You can count on me !', bot, message)
    time_now = Time.new
    @flag = false
    loop do
      sleep(1)
      time_later = (Time.new - time_now).to_i
      msg_after2 = "#{message.from.first_name}, it's time to break the idle movement 🆙"
      msg_after3 = "Hey, #{message.from.first_name}, take a sip of water 🚰"
      send_that(msg_after2, bot, message) if (time_later % 120).zero?
      send_that(msg_after3, bot, message) if (time_later % 180).zero?
      response = bot.api.getUpdates
      last_command = response['result'][-1]['update_id']
      next if %w[/remindme].include? last_command

      break
      @error_id ||= response['result'][0]['update_id']
      if %w[/stop /sleep].include? last_command
        send_that('ℹ Reminder 🔴OFF', bot, message)
        sleep(1)
        send_that('🤖📡 I\'m Listening', bot, message) if %w[/stop].include? last_command
        break
      elsif response['result'][-1]['update_id'] > @error_id
        @error_id = response['result'][-1]['update_id']
        send_that('Rather to /stop me first.', bot, message)
        next
      end
    end
  end
end
