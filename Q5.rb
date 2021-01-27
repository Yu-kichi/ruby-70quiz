# count = 0
# 0.upto(15) do |yen10|
#   0.upto(15) do |yen50|
#     0.upto(10) do |yen100|
#       0.upto(2) do |yen500|
#         if yen10 + yen50 + yen100 + yen500 <= 15
#             sum = yen10*10 + yen50*50 + yen100*100 + yen500 *500
#           if  1000 == sum
#              count += 1
#           end
#         end
#       end
#     end
#   end
# end
# p count

#再帰を使う repeated_combination()は重複組み合わせを全て作るメソッド
#2~15までの組み合わせを配列として全て作り、それをinjectで合算してる。sumでも良い。
coins = [10,50,100,500]
cnt = 0
(2..15).each do |i|
  coins.repeated_combination(i).each do|coin_set|
    cnt +=1 if coin_set.inject(:+) == 1000
  end
end
puts cnt