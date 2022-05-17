-- Vehicle Service

local VehicleService = {}

function VehicleService:GetLocalVehiclePacket()
    if require(game.ReplicatedStorage.Game.Vehicle).GetLocalVehiclePacket() then 
        return require(game.ReplicatedStorage.Game.Vehicle).GetLocalVehiclePacket()
    end
end

-- return VehicleService