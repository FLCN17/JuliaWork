function sumSquares(x)
	sum=0
	for i in Range(1:x)
		sum+=i^2
	end;
	return sum
end;

function squareSums(x)
	sum=0
	for i in Range(1:x)
		sum+=i
	end;
	sum=sum^2
	return sum
end;

println(squareSums(100)-sumSquares(100))