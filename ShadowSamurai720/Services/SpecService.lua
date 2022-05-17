-- Spec Service

local SpecService = {}

    SpecService.SpecModule = require(game.ReplicatedStorage.Module.UI).CircleAction

    function SpecService:GetSpecs(Specs)
        local SpecsTable = {}
        for i, v in next,  SpecService.SpecModule.Specs do
            if v.Name == Specs then
                table.insert(SpecsTable, v) -- Returns the last object, meaning that it gets only one spec.
            end
        end
        return SpecsTable
    end

    function SpecService:RemoveSpec(Path)
        SpecService.SpecModule.Remove(Path)
    end

    function SpecService:AddNewSpec(Info)
        if not Info or Info == {} then
            Info = {
                Name = "Name",
                Duration = 0,
                Timed = false,
                NoRay = true,
                Callback = function(a, b)
                    if not b then
                        -- Callback
                    end
                    return true
                end,
                Part = game.Players.LocalPlayer.Character.PrimaryPart
            }
        end
        Info.Name = Info.Name or "Name"
        Info.Duration = Info.Duration or 0
        Info.Timed = Info.Timed or false
        Info.Dist = Info.Dist or 10
        Info.Callback = Info.Callback or function() end
        Info.Part = Info.Part or game.Players.LocalPlayer.Character.PrimaryPart

        SpecService.SpecModule.Add({
            Part = Info.Part, --part it's attached to
            Name = Info.Name, --text
            Timed = Info.Timed, --if you hold e
            NoRay = Info.NoRay,
            Duration = Info.Duration, --if it is timed, what's the hold duration
            Dist = Info.Dist, --distance
            Callback = function(a, b)
                if b then
                    Info.Callback()
                end;
                return true;
            end
        }, Info.Part)
    end

-- return SpecService