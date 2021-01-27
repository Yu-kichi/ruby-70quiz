def korattu(num)
  keisan = num * 3 + 1
  while keisan != 1
    keisan = keisan.even? ? keisan /2 : keisan *3 + 1
    return true if keisan == num #リターンで明示的に返さないとだめ。
  end
end

puts 2.step(10000, 2).count{|i|
  korattu(i)
}

#下のような書き方だとdo end と{}の結合度の違いにより結果が変わる。こちらはだめ。
# puts 2.step(10000, 2).count do |i|
#   korattu(i)
# end

#最初に書いたベタ書き
# num = 2
# count = 0
# while num <= 10000
#   keisan = num *3 + 1 if num % 2 == 0
#   while keisan != 1
#     if keisan % 2 == 0
#       keisan = keisan / 2
#     else
#       keisan = keisan *3 +1
#     end 
#     if keisan == num
#       count +=1
#     end
#   end
#   num += 2
# end
# p count 

