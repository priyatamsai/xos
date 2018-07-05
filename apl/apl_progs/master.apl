decl
	integer pid,i,s;
enddecl
integer main()
{
	print ("Before Fork");

	i=0;
	while(i<32) do
		pid = Fork();
		if(pid == -2) then
			s=Exec("ex10.xsm");
		endif;
		if(pid==-1)then
			break;
		endif;		
		i=i+1;
	endwhile;
	s=Wait(i+1);
	return 0;
}
