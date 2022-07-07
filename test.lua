local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
Map = workspace:WaitForChild("Map")
NPCs = Map:WaitForChild("NPCs")

ReplicatedStorage = game:GetService("ReplicatedStorage")
ClientResources = ReplicatedStorage:WaitForChild("ClientResources")
npcInteractionModule = require(ClientResources:WaitForChild("NPCModule"))
UserInputService = game:GetService("UserInputService")
function dist(P1,P2)
    return (P1-P2).magnitude
end
for z,npc in pairs(NPCs:GetChildren()) do
    if not npc:IsA("Model") then
        return
    end
    local Root = npc:WaitForChild("HumanoidRootPart")
    
end

UserInputService.InputBegan()