function isPrime(x);
	if x<4 && x>1;
		return true;
	elseif x%2==0 || x%3==0;
		return false;
	end;
	y = 5;
	while y*y<=x;
		if x%y==0 || x%(y+2)==0;
			return false;
		end;
		y=y+6;
	end;
	return true;
end;

function primeReturn(x)
	i=0; num=1
	#returns xth prime in the series of primes
	while i < x
		if isPrime(num)
			i+=1
		end;
		num+=2
	end;
	return num-2
end;

println(primeReturn(10001))