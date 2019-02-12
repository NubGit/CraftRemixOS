function repairos()
while true do
term.clear()
term.setCursorPos(1,1)
print("repair - commands are, installicons, makedir,exit.")
local readingchoice = read()
if readingchoice ==  "installicons" then
bck()
elseif readingchoice == "exit" then
bck()
elseif readingchoice == "makedir" then

shell.run("mkdir OperatingSystem/Icons")
shell.run("mkdir OperatingSystem")
bck()
end
end

  
--
function osshell()
 while true do
local shellos = read()
if shellos == "exit" then
bck()
else
sell.run(shellos)
end

end 
end
  
--
function bck()
recover()
end
function recover()
term.clear()
while true do
local c1 = "help"
local c2 = "repair"
local c3 = "shell"
local c4 = "reinstall"
print("Recover ~ Shell ~ HELP FOR commands")
term.setCursorPos("1,2")
io.write("R> ")
local r = read()
if r == c1 then
print("help - shows all commands, repair - gives you a repair option., shell - brings you to the craftos shell, reinstall - installs everything back.")
elseif r == c2 then
repairos()
elseif r == c3 then
osshell()

elseif r == c4 then
print("r")
end

end
end


term.setBackgroundColor(colors.blue)
term.clear()

--
term.setCursorPos(1,1)
term.setTextColor(colors.black)
print("Recover ~ Shell ~ HELP FOR commands")
recover()
