
local file = startup.lua
local url = https://raw.githubusercontent.com/NubGit/CraftRemixOS/master/Main.lua
--## Remix Craft Os ##--
-- THIS OPERATING SYSTEM IS FREE TO MODIFY BUT DO NOT REPOST. ALWAYS SHARE PROJECT TO https://github.com/NubGit/CraftRemixOS --
term.setCursorPos(1,1)
term.clear()
print("Setup")
print("Welcome to Remix Craft os! to install please enter Y/N")
local choice = io.read()
if choice == Y then
term.clear()
term.setCursorPos(1,1)
print("THIS OPERATING SYSTEM IS FREE TO MODIFY BUT DO NOT REPOST. ALWAYS SHARE PROJECT TO https://github.com/NubGit/CraftRemixOS")
sleep(5)
term.clear()
print("Lean back while we get Inportant files.")
shell.run("mkdir OperatingSystem")
shell.run("mkdir OperatingSystem/Icons")
shell.run("wget https://raw.githubusercontent.com/NubGit/CraftRemixOS/master/Main.lua startup.lua")
term.clear()
print("Installation Finished, want to reboot? [Y/N]")
term.setCursorPos(1,5)
local choice1 = io.read()
if choice1 == Y then
os.reboot()
else
error()
end
else
error()
end
