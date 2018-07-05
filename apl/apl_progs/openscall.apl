decl
	integer status1;
	integer status2;
	integer status3;
	integer status4;

enddecl
integer main()
{	status1=Create("myfile.dat");
print(status1);
	
print("***********");
	status2 = Open("myfile.dat");
	print(status2);
	status2 = Open("myfile.dat");
	print(status2);
	status2 = Open("myfile.dat");
	print(status2);
	status2 = Open("myfile.dat");
	print(status2);
	status2 = Open("myfile.dat");
	print(status2);
status3=Close(0);
print(status3);
status3=Close(0);
print(status3);

status4=Delete("myfile.dat");
print(status4);

	return 0;
}

