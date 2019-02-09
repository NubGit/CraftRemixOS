
--## Remix Craft Os ##--
-- THIS OPERATING SYSTEM IS FREE TO MODIFY BUT DO NOT REPOST. ALWAYS SHARE PROJECT TO https://github.com/NubGit/CraftRemixOS --
term.setCursorPos(1,1)
term.clear()
term.setCursorPos(1,1)
term.clear()
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
local rebootn = read()
if rebootn == Y then
os.reboot()
else
error()
end
