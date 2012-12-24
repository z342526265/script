require 'rubygems'
require 'mail'

smtp = {
    address:"smtp.163.com",
    port:25,
    deomain:'163.com',
    user_name:'z342526265',
    password:'rails_fei',
    enable_starttls_auto:true,
    openssl_verify_mode:'none'
}
Mail.defaults { delivery_method :smtp,smtp}
mail = Mail.new do
    from 'z342526265@163.com'
    to 'z342526265_2@163.com'
    subject 'test'
    body 'body'
end
mail.deliver!
