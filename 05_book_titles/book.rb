class Book
	attr_reader :title

	def title=(given_title)
		words = given_title.split(" ")
    	words = [words[0].capitalize] + words[1..-1].map do |word| #cap first word, then search through the rest of words
       		 little_words = %w{a an and the in of}
        	 if little_words.include? word
         		 word
        	else
                word.capitalize
        	end
      	end
    @title = words.join(" ")
  end

end