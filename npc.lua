local DataStoreService = game:GetService("DataStoreService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local data = {}
ClientResources = ReplicatedStorage:WaitForChild("ClientResources")
npcResources = ClientResources:WaitForChild("NPC")
data.Resources = npcResources
data.Storage = Storage
data.Instances = {Animations = {
                    ["Unarmed"] = {
                        ["Walk"] = nil,
                        ["Run"] = nil,
                        ["Jump"] = nil,
                    },
                    ["Katana"] = {
                        ["Walk"] = nil,
                        ["Run"] = nil,
                        ["Jump"] = nil,
                    },
    },
    Load = function()
        local folder = Instance.new(folder)
        folder.Name = "Animations"
        folder.Parent = data.Storage
        
        for z,z2 in pairs(data.Instances.Animations) do
            local Z = Instance.new("Folder")
            Z.Name = z
            for z3,z4 in pairs(z2) do
                if z4 then
                    local anim = Instance.new("Animation")
                    anim.Name = "z3"
                    anim.AnimationId = z4
                    anim.Parent = Z
                    data.Instances.Animations[z][z3] = anim
                end
            end
            Z.Parent = folder
        end
        return true
    end,
}
data.Instances.Load()
print("NPC instances loaded.")
data.npc = {
     ["npc"] = {
         Category = {QuestGiver = true,
                    Patroller = true,
                    SafeCityPatroller = true,
        },
        Equipment = {
            Melee = "Katana"
        },
        AnimTracks = {
        },

     }
}
for z,z2 in pairs(data.npc) do
    local MovementTrack = "Unarmed"
    if z2.Equipment and z2.Equipment.Melee then
        local Melee = z2.Equipment.Melee
        if Melee == "Katana" then
            MovementTrack = "Katana"
        end
    end
    for z3,z4 in pairs(data.Instances.Animations[MovementTrack]) do
        data.npc[z].AnimTracks[z3] = 
    end
end




return data