integer main()
{
print("hello2");
integer status,n,status1,i,status2,status3,value;
n=200;
i=1;
status=Create("myfile1.dat");
status1=Open("myfile1.dat");
status=Create("myfile2.dat");
status2=Open("myfile2.dat");
status=Create("myfile3.dat");
status3=Open("myfile3.dat");
while(i < n/2) do
	breakpoint;
   if(i%2 !=0) then
	//breakpoint;
	status=Write(status1,i);
    else
	status=Write(status2,i);
    endif;
   i=i+1;
endwhile;

//print("&&&&&&");
//print(i);
status=Seek(status1,0);
status=Seek(status2,0);
i=1;
while(i < n/2) do
   if(i%2 != 0) then
	status=Read(status1,value);
	//print(status);
	status=Write(status3,value);
	//print(status);
	
    else
	status=Read(status2,value);
	status=Write(status3,value);
    endif;
   i=i+1;
endwhile;

i=Exec("files.xsm");

status=Seek(status3,0);
status=Delete("myfile1.dat");
status=Delete("myfile2.dat");
//status=Delete("myfile3.dat");

status=Close(status1);
print(status);
status=Close(status2);
print(status);
status=Close(status3);



return 0;
}
