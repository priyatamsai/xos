decl
	integer isprime(integer n),a;
enddecl


integer isprime(integer n)
{
	integer i;
	i=1;
	while(i<n&&n%i!=0) do
	i=i+1;
	endwhile;

integer ans;
	if(i==n) then
	ans=0;
	else
		ans=1;
	endif;
	
return ans;
}



integer main()
{
	integer n;
	read(n);
	integer i;
i=2;
while(i<n) do
if(isprime(i)) then
print(i);


endif;

i=i+1;

endwhile;



	
	return 0;
}
