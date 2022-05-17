local Client = {}

Client.Services = {
    "SpecService",
    "NotificationService",
    "VehicleService"
}

Client.Fetch = loadstring(game:HttpGet("https://raw.githubusercontent.com/HarmonicDust/My-Project/main/Functions/Fetch.lua", true))()

    function Client:GetService(Service)
        if table.find(Client.Services, Service) then
            return Client.Fetch("ShadowSamurai720/Services:"..Service)
        end
    end

return Client