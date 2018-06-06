function arrayConvert(x)
	digits = []
	while x>0
		rem = x%10
		push!(digits, rem)
		x = div(x, 10)
	end;
	println(digits)
	return digits;
end;

function palinChecker(x)
	#throw into an array?
	checksum=0; i=0
	digits=arrayConvert(x)
	middle = ((length(digits)%2)==0 ? length(digits)/2 : div(length(digits),2)+1)
	while i < middle
		if digits[1+i] == digits[end-i]
			println("match")
			checksum = checksum + 1
			println(checksum)
		else
			i = middle
		end;
		i=i+1
	end;
	if checksum*2 >= length(digits)
		return true
	else
		return false
	end;
end;

function palinMaker(x)
	highest = 0; highA = 0; highB = 0;
	for a in Range(x:-1:100)
	#println(a)
		for b in Range(x:-1:100)
		#println(b)
			product = a*b
			if palinChecker(product) == true && a*b>highest && (a >= highA || b >= highB)
				println(a); highA = a;
				println(b); highB = b;
				highest = a*b
			end;
		end;
	end;
	return highest
end;

println(palinMaker(999))