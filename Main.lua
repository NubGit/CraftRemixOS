
function setup()
local installwrite1 = "RemixCraftOs - Setup"
local installwrite2 = "Enter Password"
local installwrite3 = "Press enter when your done."
local intallwritepos1 = 1,1
local installwritepos2 = 1,4
local installwritepos3 = 1,5
term.setCursorPos(intallwritepos1)
term.clear()
term.setBackgroundColor(colors.green)
term.clear()
print(installwrite1)
term.setCursorPos(intallwritepos2)
print(installwrite2)
term.setCursorPos(intallwritepos3)
print(installwrite3)
local p = io.read()
local configFile = fs.open("config.ini", "w")  --# You don't *have* to use "ini" in your file name, this is just an example.
	configFile.writeLine(p)
	configFile.close()
	term.clear()
	print("rebooting.")
	os.reboot()
end 
function OsShell()
	term.clear()
	term.setCursorPos(1,1)
	
	term.setBackgroundColor(colors.black)
	term.clear()
	print("RemixOP - Shell")
	term.setTextColor(colors.yellow)
	while true do
local textio = "OsShell > "
io.write(textio)
local inputos = io.read()
if inputos == "exit" then
	term.clear()
	oss()
	else
shell.run(inputos)
term.setTextColor(colors.yellow)
end
end
end
function notepad()
	term.clear()
	term.setCursorPos(1,1)
	print("File name")
	local fname = io.read()
	local configFile = fs.open(fname, "w")  --# You don't *have* to use "ini" in your file name, this is just an example.
	local typeing  = io.read()
	configFile.writeLine(typeing)
	
end
function logon()
local ini = fs.exists("config.ini")
if ini then
term.clear()
term.setCursorPos(1,1)
print("Enter password")
term.setCursorPos(1,2)
local Readline = io.read()
local configFile = fs.open("config.ini", "r") 
local a = configFile.readLine()  --# Even if you wrote a number-type variable to the file, everything gets read back as a string; tonumber() can convert
configFile.close()

if a == Readline then
  oss()
  else
  logonfail()
end
else 
setup()
end
--end of system apps
function logonfail()
logon()
end
function oss()
	
local px, py = 1, 1
local xp,xy = 1,2
local ic1 = "[Shell]"
local ic2 = "[Notepad]"
term.setCursorPos(px,py)

print(ic1)
term.setCursorPos(xp,xy)
print(ic2)
while true do
  local e, but, cx, cy = os.pullEvent()
  if e == "mouse_click" then
        if cx >= px and cx <= px + ic1:len() and cy == py then
       
         OsShell()
         
        end
  
  if cx >= xp and cx <= xp + ic2:len() and cy == xy then
         
         
         notepad()
        end
   


end
end
end

--

	

logon()

