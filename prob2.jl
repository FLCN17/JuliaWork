sum=0
a=0; b=1
while(a < 4000000 || b < 4000000)
	a=a+b; b=a+b;
	sum+=(a%2==0?a:(b%2==0?b:0))
end
println(sum)