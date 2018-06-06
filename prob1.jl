sum=0
for number in Range(0:999)
	sum+=(number%3==0 || number%5==0 ? number : 0)
end
println(sum)