local Client = {}

Client.Services = {
    "SpecService",
    "NotificationService",
    "VehicleService"
}

local Fetch = loadstring(game:HttpGet("https://raw.githubusercontent.com/HarmonicDust/My-Project/main/Functions/Fetch.lua", true))()

    function Client:GetService(Service)
        if table.find(Client.Services, Service) then
            return Fetch("ShadowSamurai720/Services:"..Service..".lua")
        end
    end

return Client