integer main(){
integer pid,a,b;
string execfile;

while(0==0) do

print(">>");
read(execfile);

if(execfile=="exit") then
Exit();
endif;

pid=Fork();

if(pid==-1) then
print("Fork error");
endif;

if(pid==-2) then
a=Exec(execfile);

if(a==-1) then
print("Exec error");
break;
endif;

else
b=Wait(pid);

if(b==-1) then
print("Wait error");
endif;

endif;

endwhile;

return 0;

}
