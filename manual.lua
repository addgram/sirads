redis = (loadfile "redis.lua")()
io.write("Enter sirads ID : ")
local last = io.read()
io.write("\nEnter Full Sudo ID : ")
local sudo=io.read()
local text,ok = io.open("base.lua",'r'):read('*a'):gsub("sirads%-ID",last)
io.open("sirads-"..last..".lua",'w'):write(text):close()
io.open("sirads-"..last..".sh",'w'):write("while true; do\n./telegram-cli-1222 -p sirads-"..last.." -s sirads-"..last..".lua\ndone"):close()
io.popen("chmod 777 sirads-"..last..".sh")
redis:set('sirads:'..last..':fullsudo',sudo)
print("Done!\nNew sirads Created...\nID : "..last.."\nFull Sudo : "..sudo.."\nRun : ./sirads-"..last..".sh")
