def translate(str)
	answer =""
	temp =""
	arr = str.split(" ")
	arr.each do |word|
		if (VOWELS.include?(word[0])) #vowel
			temp = oneVowel(word)
		end
		if(!VOWELS.include?(word[0]) && word[1..2] != "qu") #one consonant
			temp = oneConsonant(word)
		end
		if(!VOWELS.include?(word[0]) && !VOWELS.include?(word[1])) #two consonants
			temp = twoConsonants(word)
		end
		if(!VOWELS.include?(word[0]) && !VOWELS.include?(word[1]) && !VOWELS.include?(word[2]))
			temp = threeConsonants(word)
		end
		if(word[0..1] == "qu")
			temp = twoConsonants(word)
		end
		if(!VOWELS.include?(word[0]) && word[1..2] == "qu")
			temp = threeConsonants(word)
		end
		
		answer = answer + " " + temp
	end
	answer.strip
end

def oneVowel(w)
	w+"ay"
end

def oneConsonant(w)
	w[1..-1]+w[0]+"ay"
end

def twoConsonants(w)
	w[2..-1]+w[0]+w[1]+"ay"
end

def threeConsonants(w)
	w[3..-1]+w[0]+w[1]+w[2]+"ay"
end

VOWELS = %w[a e i o u]
