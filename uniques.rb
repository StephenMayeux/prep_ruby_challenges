def uniques(array)
  unique_array = []
  array.each do |array_item|
  	unique_array.push(array_item) unless unique_array.include?(array_item)
  end
  return unique_array
end

uniques([1,5,"frog", 2,1,3,"frog"])
