p time_now = Time.new
loop do
  sleep(1)
  later = (Time.new - time_now).to_i
  p later

  if (later % 5).zero?
    p 'read 5'
  else
    p 'read 1'
  end

  p 'read 10' if (later % 10).zero?
end

# while true
#   sleep(1)
#   time_difference  = Time.new - time_now
#
#   case time_difference.to_i
#   when 5
#     puts 'read 5 sec'
#   when 10
#     puts 'read 10 sec'
#   end
# end

#
# p 'hello' == 'hello'
# p 'hello'.object_id == 'hello'.object_id
#
# p var1 = 'hello'
# p var2 = 'hello'
#
# p var1 == var2
# p var1.object_id == var2.object_id
#
#
#
