--https://www.roblox.com/share?code=46c6b9fb3e20bf4cbab5197f5f2dbd71&type=ExperienceDetails&stamp=1772277882373

local Knit = require(game:GetService("ReplicatedStorage").ReplicatedStorage_Source.Packages.Knit)
local PlotService = Knit.GetService("PlotService")
local plotId = PlotService.ClaimedPlotId:Get()

local plot = workspace[plotId]
local eggsConveyor = plot:FindFirstChild("Map"):FindFirstChild("EggsConveyor")

for _, child in pairs(eggsConveyor:GetChildren()) do
    if child:IsA("Model") and child.PrimaryPart then
        local ppName = child.PrimaryPart.Name
        if ppName ~= "MoreLuckModel" and ppName ~= "" then
            for _, subChild in pairs(child:GetChildren()) do
                local proximityPrompt = subChild:FindFirstChildWhichIsA("ProximityPrompt")
                if proximityPrompt then
                    local display = subChild:FindFirstChild("Display")
                    if display then
                        for _, obj in pairs(display:GetDescendants()) do
                            if obj:IsA("TextLabel") then
                                print(obj.Text)
                            end
                        end
                    end
                end
            end
        end
    end
end