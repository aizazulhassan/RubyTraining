class FrequencyCount
def display(arr)
  arr.each do |x|
    puts x
  end
end

def frequency(arr)
  i=0
  map = Hash.new()
  while i<arr.size
    if map.key?arr[i]
      map[arr[i]]=map[arr[i]]+1
    else
      map[arr[i]]=1
    end
    i+=1
  end
  map.each do |key, value|
    puts "#{key} : #{value}"
  end
end
end

array1 = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5]
obj = FrequencyCount.new()
obj.frequency(array1);
