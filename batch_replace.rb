# encoding: utf-8
# 批量替换脚本,参数为 文件路径名称
# 如果参数中含有*号，则表示*前文件夹下面所有文件
# 如果参数中含有^file1号，
# 三种形式参数的例子  file1,file2/*,file3/^file4
# 如果参数开头为"/",则为绝对路径，如果开头不为“/”，则从当前路径开始


files1 = ARGV.select{|a| a[-1,1]=="*"}

