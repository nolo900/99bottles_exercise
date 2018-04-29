class Bottles

	def initialize	 
	end


	def pluralize_if_needed(word)
	end



	def verse(start_amt)
		next_amt = start_amt - 1 
		next_vessel = next_amt >= 1 ? 'bottles' : 'bottle'
		puts next_amt

		verse =	<<-VERSE
#{start_amt} bottles of beer on the wall, #{start_amt} bottles of beer.
Take one down and pass it around, #{next_amt} ${next_vessel} of beer on the wall.
VERSE
	end
end
