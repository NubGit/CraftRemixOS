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
io.write("R> ")
local r = read()
if r == c1 then
print("help - shows all commands, repair - gives you a repair option., shell - brings you to the craftos shell, reinstall - installs everything back.")
elseif r == c2 then
while true do
term.clear()
term.setCursorPos(1,1)
print("repair - commands are, installicons, makedir.")
local readingchoice = read()
if readingchoice ==  "installicons" then
bck()
elseif readingchoice == "makedir" then
local folder = "OperatingSystem"
local folder2 = "OperatingSystem/Icons"
if folder then
print("Skipped.")
if folder2 then 
"Skipped."

else

shell.run("mkdir OperatingSystem/Icons")
else
shell.run("mkdir OperatingSystem")
end
end
end
elseif r == c3 then
while true do

local shellos = read()
if shellos == exit then
bck()
else
sell.run(shellos)
end
end
elseif r == c4 then
end
end

term.setBackgroundColor(colors.blue)
term.clear()

--
term.setCursorPos(1,1)
term.setTextColor(colors.black)
print("Recover ~ Shell ~ HELP FOR commands")
recover()