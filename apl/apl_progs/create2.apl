integer main()
{
integer status,n,status1,i,status2,status3,value;
n=200;
i=1;
print("hello");
status=Create("myfile4.dat");
print(status);
status1=Open("myfile4.dat");
print(status1);
status=Create("myfile5.dat");
print(status);
status2=Open("myfile5.dat");
print(status2);
status=Create("myfile6.dat");
print(status);
status3=Open("myfile6.dat");
print(status3);
i=n/2;
while(i <= n) do
   if(i%2 !=0) then
	status=Write(status1,i);
    else
	status=Write(status2,i);
    endif;
   i=i+1;
endwhile;
status=Seek(status1,0);
status=Seek(status2,0);
i=n/2;
while(i <= n) do
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
status=Seek(status3,0);
status=Delete("myfile4.dat");
print(status);
status=Delete("myfile5.dat");
print(status);
//status=Delete("myfile6.dat");
//print(status);

status=Close(status1);
print(status);
status=Close(status2);
print(status);
status=Close(status3);
print(status);



return 0;
}
