Arr = [1,2,3,4,5]
S = Arr.length()
i = 0
t = 0
while i < S
  t = t + Arr[i]
  Arr[i]=t
  i+=1
end
puts Arr
