require "pp"
pp Thread.current
t1 = Thread.new{
  puts "thread 1 ..."
  sleep 5
  puts "thread 1 over ..."
  #pp Thread.current
}

t2 = Thread.new{
  puts "thread 2 ..."
  #pp Thread.current
  p "thread 2 over ..."
}

puts "Started At #{Time.now}"
t1.join
t2.join
puts "End at #{Time.now}"
pp Thread.current
