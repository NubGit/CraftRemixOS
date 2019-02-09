
function setup()
local installwrite1 = "RemixCraftOs - Setup"
local installwrite2 = "Enter Password"
local installwrite3 = "Press enter when your done."
term.setCursorPos(1,1)
term.clear()
term.setBackgroundColor(colors.green)
term.clear()
term.setBackgroundColor( colors.black )
print(installwrite1)
term.setCursorPos(1,4)
print(installwrite2)
term.setCursorPos(1,5)
print(installwrite3)
local p = io.read()
local configFile = fs.open("config.ini", "w")  --# You don't *have* to use "ini" in your file name, this is just an example.
	configFile.writeLine(p)
	configFile.close()
	term.clear()
	print("rebooting.")
	os.reboot()
end 
function changepass()

end
function dskmgr()
term.clear()
print(fs.getFreeSpace("/"))
sleep(5)
oss()
end
function talkback()
term.clear()	
while true do
local message = read()
if message == exit then
oss()
else
print(message)		
end
end
function cal()
term.clear()
term.setBackgroundColor(colors.blue)
term.clear()
print("add, subtract, multiply or divide? [or type 'exit' to go back to Home]") 
op = read()
print("") -- just gives us some space to work with

print("FIRST NUMBER")

num1 = tonumber(read()) -- accepts the first number to be stored in the variable 'number1'
print("")

print("SECOND NUMBER")
num2 = tonumber(read())
print("")

-- now we operate on the number depending on what the user typed first

if op == "add" then 
 result = num1+num2
print(result) -- this prints the result
end

if op == "multiply" then
 result = num1*num2 -- asterisk represents multiply
print(result)
end

if op == "divide" then
 result = num1/num2
print(result)
end

if op == "subtract" then
 result = num1-num2
print(result)
end
if op == "exit"  then 
oss()
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

