def combinations(first_word_set, second_word_set)
  results = []
  first_word_set.each do |first_word|
  	second_word_set.each do |second_word|
  	  results.push(first_word + second_word)
  	end
  end
  return results
end

combinations(["on","in"],["to","rope"])
