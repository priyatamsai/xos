integer main(){
integer stat1;
integer stat;
integer f1;
integer f2;
integer f3;
integer f4;
string x;
string y;
print("exec..");

stat1=Create("final.dat");
	f3=Open("final.dat");
	f1=Open("file1.dat");
	f2=Open("file2.dat");
	while(1==1)do
		stat=Read(f1,x);
		if(x=="")then
			break;
		endif;
		
		stat=Write(f3,x);
		stat=Read(f2,y);
		if(y=="")then
			break;
		endif;
		stat=Write(f3,y);
	endwhile;
return 0;
}
