#while文 trueの間実行
# n = 0
# while n <10
#   puts "n = #{n}"  
#   n+=1
# end

#timesメソッド 変数は0からスタート
# 10.times{|n| p n}

#uptoメソッド 対象のオブジェクトが持つ数字(integer,少数は無理)からmaxまで実行。1ずつ増える。
#5.upto(10){|n| p n}
#5.5.upto(10){|n| p n} #=>エラー

#stepメソッド Numericに対して実行するため小数可。第一引数はlimit、超えた分は実行されない。
#第二引数は増加分。負の値や小数も可。
#5.5.step(10,1){|n| p n } #=>5.5~9.5

# eachメソッド 配列や範囲に対して使う。数字だけならuptoなどと同じようになる。
#(5..10).each{|n|p n }
#("a".."z").each {|s| p s}

