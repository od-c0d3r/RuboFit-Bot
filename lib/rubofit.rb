module RuboFit
  def print_that(that, bot, message)
    bot.api.send_message(chat_id: message.chat.id, text: that.to_s)
  end

  def water_reminder(bot, message)
    sleep(7200) #2 hours
    print_that("Hey, #{message.from.first_name}, has been 2 hrs since last cup, drink water", bot, message)
  end

  def activity_reminder(bot, message)
    sleep(2700) #45min
    print_that("#{message.from.first_name}, Time to move your body for 5 min", bot, message)
  end
end