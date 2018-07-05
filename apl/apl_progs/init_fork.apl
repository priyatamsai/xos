
integer main()
{breakpoint;
	integer pid;
	integer stat1;
	integer stat2;
	stat1=Create("empty.dat");
	print(stat1);
	stat1=Open("empty.dat");
	print(stat1);
	//stat1=Create("zzz.dat");
//	//print(stat1);
//	
//	
//	stat2=Delete("even.xsm");
//	print("delete status:");
//	print(stat2);
//	
//	//print(stat2);
//	
//	print ("Before Fork");
//	pid = Fork();
//	print ("After Fork");
//	//stat1=Open("zzz.dat");
//	//print(stat1);
	
	return 0;
}
