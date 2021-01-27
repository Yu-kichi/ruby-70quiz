def cutbar(length,men)
  count = 0
  current = 1
  while length > current do
    current += current < men ? current : men
    count += 1
  end
  count
end

# p cutbar(8,3)
# p cutbar(20,3)
# p cutbar(100,5)

#再起の場合
def cutbar2(m,n,current)
  if current >= n 
    0
  elsif current < m 
    1 + cutbar2(m,n,current * 2)
  else
    1 + cutbar2(m,n,current + m)
  end
end
cutbar2(3,8,1)
cutbar2(3,20,1)