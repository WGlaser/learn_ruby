def add(a,b)
	a+b
end

def subtract(x,y)
	x-y
end

def sum(array)
	if array.length ==0
		0
	else
		sum = 0
		array.each{|i| sum = sum+i}
		sum
	end
end
		
