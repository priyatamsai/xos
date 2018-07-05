decl
	integer status;
enddecl
integer main()
{
integer status;
status=Fork();
integer count;
count=1000;
if(status!=-2)then
status=Exec("even.xsm");
print(status);
status=Exec("odd.xsm");
print(status);

print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
print ("its done");
else


while(count!=0)do
count=count-1;
endwhile;

status=Exec("aaaa.xsm");
print(status);
status=Exec("bbb.xsm");
print(status);
endif;

	return 0;
}
