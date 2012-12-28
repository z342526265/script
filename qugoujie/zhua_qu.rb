# encoding: utf-8
require './import_huiyuan'

require "mechanize"

HEAD_TXT = <<HEAD
Host: m.dflabour.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Cookie: 0GW2_2132_saltkey=UR9r6jVp; 0GW2_2132_last_visit=1356625757; 0GW2_2132_sid=U28wlj; timestamp=1356658208000; sign=12CDE4C41B9DD4CAF97D48F22A180CA9; PHPSESSID=9rqtgdeqel6lb7ss5esh38m257; _currentUrl_=czozMToiL2FkbWluL2luZGV4LnBocD9hPWluZGV4Jm09VXNlciI7; returnUrl=czozMToiL2FkbWluL2luZGV4LnBocD9hPWluZGV4Jm09VXNlciI7
HEAD




class ZhuaQu < Mechanize

  def get_user_page
    url = "http://m.dflabour.com/admin/index.php?m=User&a=add"
    get url,[],nil,head_hash(HEAD_TXT)
  end
  #head_txt 转化为hash形式
  def head_hash(head_txt)
    Hash[*(head_txt.split(/\n|\: /))]
  end

  def query_hash(query_txt)
    Hash[*(query_txt.split(/\=|\&/))]
  end
end


zhuaqu = ZhuaQu.new

p names = NAMES.split(/\n/)
p names.length

j = 1
while names.length > 1

  num = rand(names.length)
  p num
  name = names[num]
  names.delete(name)
  p name

  page = zhuaqu.get_user_page
  form = page.form
  #p form
  form.user_name = name
  form.email = "emai#{j}@126.com"
  form.password = 'a654321'
  form.confirm_password = 'a654321'
  form.submit(nil,zhuaqu.head_hash(HEAD_TXT))
  #p form
  j = j + 1
end

#names.each_with_index do |n,i|
#  page = zhuaqu.get_user_page
#  form = page.form
#  #p form
#  form.user_name = n
#  form.email = "emai#{i+1}@126.com"
#  form.password = 'a654321'
#  form.confirm_password = 'a654321'
#  form.submit(nil,zhuaqu.head_hash(HEAD_TXT))
#  #p form
#
#end
##p zhuaqu.head_hash(NAMES)
#
#
#
