decl
	integer status;
enddecl
integer main()
{

//print ("its done");

integer stat,pid;
integer stat1;


stat1=3;

string fname;
while(1==1)do
print("iam new shell");
	read(fname);
	if(fname=="exit")then
		Exit();
	endif;
	
	
	pid=Fork();
	if(pid==-1)then
		print("not forked");
	
	else
		if(pid==-2)then
		breakpoint;
			stat=Exec(fname);
			print("not executed");
			break;
		else
			//stat1=Wait(pid);
			if(stat1!=0)then
				print("not waiting");
			endif;
		endif;
	endif;
		
endwhile;


	
	



	return 0;
}
