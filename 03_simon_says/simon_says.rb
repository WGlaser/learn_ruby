def echo(w)
	w
end

def shout(w)
	w.upcase
end

def repeat(w,t=2)
	s=""
	for i in 1..t-1
		s=s+w+" "
	end
	s=s+w
	s
end

def start_of_word(w,n)
	s = "";
	for i in 0..n-1
		s=s+w[i];
	end
	s;
end

def first_word(w)
	n=0
	t=w[n]
	s=""
	while t!= " "
		s=s+w[n]
		n=n+1
		t=w[n]
	end
	s
end

def titleize(w)
	w.capitalize!
    w.split(' ').map { |w| LIST.include?(w) ? w : w.capitalize }.join(' ')
end

LIST = %w[a and it the over]



	
