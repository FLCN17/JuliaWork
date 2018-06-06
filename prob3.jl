function isPrime(x);
	if x<4 && x>1;
		println("prime")
		return true;
	elseif x%2==0 || x%3==0;
		println("not prime")
		return false;
	end;
	y = 5;
	while y*y<=x;
		if x%y==0 || x%(y+2)==0;
			println("not prime")
			return false;
		end;
		y=y+6;
	end;
	println("prime")
	return true;
end;

function primeFactors(x)
	factors=[] #add with push!(array, val)
	
	while x > 0 && (isPrime(x) != true)
		lim=x^.5
		println(lim)
		factor=lim-(lim%1)
		println(factor); println(isPrime(factor))
		while factor>0
			if x%factor==0 && isPrime(factor)
				push!(factors, factor)
				x=x/factor
				println(x)
				factor=0
			else
				factor=factor-1
			end;
		end;			
	end;
	push!(factors, x)
	return factors
end;

println(primeFactors(997799))