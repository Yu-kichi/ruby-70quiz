cards = Array.new(100,false)
(2..100).each do |num|
  index = num-1
  while (index < cards.size) do
    cards[index] = !cards[index]
    index +=num
  end
end

100.times do |num|
  p num + 1  if !cards[num]
end
