# encoding: utf-8

#数据库配置
DATABASE_CONFIG = {
    :adapter => "mysql2",
    :host => "agent.nyguangyi.com",
    :database => "longxi",
    :username => "root",
    :password => "guangyi182435",
    :encoding => "utf8"
}


require 'mysql2'
c = Mysql2::Client.new(DATABASE_CONFIG)
c.query('set names utf8')
# 修改表
sql_txt = "select path,id from house_pic"
contents = c.query(sql_txt)
contents.each do |row|
    content = row["path"].gsub("\/ssh2_example","")
    sql_txt = 'UPDATE longxi.house_pic SET path = '+'"'+ content +'"'+ 'WHERE id ='+row["id"].to_s
    c.query(sql_txt)
end

# 修改表
p "999999999999"




