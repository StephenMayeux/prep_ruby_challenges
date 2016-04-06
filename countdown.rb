def friend_number_circle(number_of_friends, count_up_to)
  # Create hash of friends
  friend_circle = (1..number_of_friends).inject({}) { |hash, num| hash[num] = []; hash }

  # Initial Values
  current_friend = 1
  clockwise = true

  #Iterate through all of the numbers and assign to friends
  (1..count_up_to).each do |current_number|
  	if clockwise

  	  if current_number % 7 == 0 && current_number % 11 == 0
  	    friend_circle[current_friend] << current_number
  	    clockwise = false

  	    if current_friend == 2
  	      current_friend = number_of_friends
  	    elsif current_friend == 1
  	      current_friend = number_of_friends - 1
  	    else
  	      current_friend -= 2
  	    end

  	  elsif current_number % 7 == 0
  	    friend_circle[current_friend] << current_number
  	  	current_friend == 1 ? current_friend = number_of_friends : current_friend -= 1
  	  	clockwise = false

  	  elsif current_number % 11 == 0
  	    friend_circle[current_friend] << current_number

  	    if current_friend == number_of_friends - 1
  	      current_friend = 1
  	    elsif current_friend == number_of_friends
  	      current_friend = 2
  	    else
  	      current_friend += 2
  	    end

  	  else
  	  	friend_circle[current_friend] << current_number
  	  	current_friend == number_of_friends ? current_friend = 1 : current_friend += 1
  	  end

  	else

  	  if current_number % 7 == 0 && current_number % 11 == 0
  	  	friend_circle[current_friend] << current_number
  	  	clockwise = true

  	  	if current_friend == number_of_friends - 1
  	  	  current_friend = 1
  	  	elsif current_friend == number_of_friends
  	  	  current_friend = 2
  	  	else
  	  	  current_friend += 2
  	  	end

  	 elsif current_number % 7 == 0
  	   friend_circle[current_friend] << current_number
  	   current_friend == number_of_friends ? current_friend = 1 : current_friend += 1
  	   clockwise = true

  	 elsif current_number % 11 == 0
  	   friend_circle[current_friend] << current_number

  	   if current_friend == 2
  	     current_friend = number_of_friends
  	   elsif current_friend == 1
  	     current_friend = number_of_friends - 1
  	   else
  	     current_friend -= 2
  	   end

  	 else
  	   friend_circle[current_friend] << current_number
  	   current_friend == 1 ? current_friend = number_of_friends : current_friend -= 1
  	 end

  	end

  end
  puts friend_circle
end

friend_number_circle(10, 100)
