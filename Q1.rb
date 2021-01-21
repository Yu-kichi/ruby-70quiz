num = 11
while true
  if num.to_s.reverse == num.to_s &&
     num.to_s(2).reverse == num.to_s(2) &&
     num.to_s(8).reverse == num.to_s(8)
    p num
    exit #breakの方がいいかも
  end
  num +=1 #奇数だけ見ればいいので2の方がよかった。
end
