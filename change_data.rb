# encoding: utf-8
require "active_record"
require "active_support/all"
require "mysql2"

#数据库配置
DATABASE_CONFIG = {
    :adapter => "mysql2",
    :host => "agent.nyguangyi.com",
    :database => "longxi",
    :username => "root",
    :password => "guangyi182435",
    :encoding => "utf8"
}


#连接数据库
ActiveRecord::Base.establish_connection(DATABASE_CONFIG)

class Article < ActiveRecord::Base
    self.table_name = "article"
    attr_accessible :contents
end

Article.first(1).each do |a|
    txt = a.contents

    p txt

    txt.gsub!("\/ssh2_example","")

    p txt

    a.contents = txt
    a.save!
    p a.contents

    a.update_attribute(:contents,txt)
    p "8888888888888888888"
    p a.reload
    #sql = "update longxi.article set contents = #{txt} where id = a.id"
    p txt
    p a
    p a.reload
end


