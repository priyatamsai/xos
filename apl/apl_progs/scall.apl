decl
	integer status;
enddecl
integer main()
{
	status=Delete("mycall.dat");
	print(status);
	return 0;
}
