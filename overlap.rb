def overlap(box1, box2)
	box1_x_range = (box1[0][0]..box1[1][0]).to_a
	box1_y_range = (box1[0][1]..box1[1][1]).to_a
	box2_x_range = (box2[0][0]..box2[1][0]).to_a
	box2_y_range = (box2[0][1]..box2[1][1]).to_a

	shared_sets = 0

	box1_x_range.each do |item|
		if box1_y_range.include?(item)
		  if box2_x_range.include?(item) && box2_y_range.include?(item)
		    shared_sets += 1
		  end
		end
	end

	if shared_sets < 2
	  return false
	else
	  return true
	end
end

overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
