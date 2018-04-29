class Bottles

	def initialize	 
	end


	def pluralize_if_needed(word)
	end

	def verse(start_amt)
		next_amt = start_amt - 1 
		start_vessel = start_amt > 1 ? 'bottles' : 'bottle'
		next_vessel = next_amt > 1 ? 'bottles' : 'bottle'

		verse =	<<-VERSE
#{start_amt} #{start_vessel} of beer on the wall, #{start_amt} #{start_vessel} of beer.
Take one down and pass it around, #{next_amt} #{next_vessel} of beer on the wall.
VERSE
	end
end
