class Bottles
	def vessel(amt)
		amt == 1 ? 'bottle' : 'bottles'
	end

	def next_amt(start_amt)
		if start_amt >1
			start_amt - 1
		elsif start_amt == 0
			99
		else
			'no more'
		end
	end

	def reduction_amount_word(start_amt)
		start_amt == 1 ? 'it' : 'one'
	end

	def start_phrase(start_amt)
		start_amt == 0 ? 'no more' : start_amt.to_s
	end

	def buildLine2Phrase1(start_amt,reduction_amount_word)
		if start_amt == 0
			"Go to the store and buy some more"
		else
			"Take #{reduction_amount_word} down and pass it around"
		end
	end

	def verse(start_amt)
		next_amt = next_amt(start_amt) 
		start_vessel = vessel(start_amt)
		next_vessel = vessel(next_amt)
		reduction_amount_word = reduction_amount_word(start_amt)
		start_phrase = start_phrase(start_amt)
		line2Phrase1 = buildLine2Phrase1(start_amt,reduction_amount_word)
		
		verse =	<<-VERSE
#{start_phrase.capitalize} #{start_vessel} of beer on the wall, #{start_phrase} #{start_vessel} of beer.
#{line2Phrase1}, #{next_amt} #{next_vessel} of beer on the wall.
VERSE
	end

	def verses(start_verse, end_verse)
		compiled_verse = ''
		for v in start_verse.downto(end_verse) do
			compiled_verse += self.verse(v)
			compiled_verse += "\n"
		end
		return compiled_verse.chomp
	end

	def song
		verses(99,0)
	end
end
