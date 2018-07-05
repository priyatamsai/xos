integer main()
{
integer status,n,status1,i,status2,status3,value;
n=1000;
status=Create("myfile7.dat");
status1=Open("myfile7.dat");
status2=Open("myfile3.dat");
status3=Open("myfile6.dat");

status=Seek(status2,0);
status=Seek(status3,0);
i=1;
while(i <= n) do
   if(i<n/2) then
	status=Read(status2,value);
	status=Write(status1,value);
	
    else
	status=Read(status3,value);
	status=Write(status1,value);
    endif;
   i=i+1;
endwhile;

status=Delete("myfile3.dat");
status=Delete("myfile6.dat");
//status=Delete("myfile7.dat");

status=Close(status2);
print(status);
status=Close(status3);
print(status);
status=Delete("myfile3.dat");
print(status);
status=Delete("myfile6.dat");
print(status);

return 0;
}
