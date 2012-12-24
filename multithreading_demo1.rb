#by www.yiibai.com

require "pp"

count = 0
arr = []

10.times do |i|
  arr[i] = Thread.new {
    sleep(rand(0)/10.0)
    Thread.current["mycount"] = count
    count += 1
  }
 # p arr
end

pp count
pp "==========="
arr.each {|t| t.join; print t["mycount"], ", " }
puts "count = #{count}"
