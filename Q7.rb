#最初に作ったもの
require "date"

ary = (Date.parse("19631010")..Date.parse("20200724"))
ary = ary.map{|time|time.strftime("%Y%m%d").to_i}
ary.each do |time|
  puts time if time == time.to_s(2).reverse.to_i(2)
end

#より効率的な探索方法(参考)
# require 'date'

# from_left = 19641010.to_s(2)[4,8].to_i(2)
# to_left = 20200724.to_s(2)[4,8].to_i(2)
# # 左右の8文字をループさせる
# from_left.upto(to_left){|i|
#   l = "%08b" % i 
#   r = l.reverse
#   (0..1).each {|m|
#   value = "1001#{l}#{r}1001"
#   begin
#     puts Date.parse(value.to_i(2).to_s).strftime('%Y%m%d')
#     rescue #有効な日付以外を無視する
#   end
#   }
# }
