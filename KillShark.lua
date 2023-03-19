---------------------MALICOUS HUB Kill Shark SCRIPT---------------------
-- Find the first tool in the player's backpack
local player = game.Players.LocalPlayer
local tool = player.Backpack:FindFirstChildOfClass("Tool")
 
-- Equip the tool if it was found
if tool then
    player.Character.Humanoid:EquipTool(tool)
end
 
----------------------------------------------------------------------------------------------
 
local data = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ProjectilesClient"):WaitForChild("WeaponScript"):WaitForChild("HitScanFire"))
local remote = getupvalue(getupvalue(getupvalue(data.Fire,8),4),2)
 
local function WaitForChildWhichIsA(instance, classtype)
   local target = instance:FindFirstChildWhichIsA(classtype)
   while not target or not target:IsA(classtype) do
       target = instance.ChildAdded:Wait()
   end
   return target
end
 
while task.wait() do
   remote:FireServer(WaitForChildWhichIsA(workspace:WaitForChild("Sharks"),"Model"))
end
