-- Notification Service

local NotificationService = {}

    NotificationService.NotificationModule = require(game.ReplicatedStorage.Game.Notification)

    function NotificationService:NewNotification(Info)
        if not Info or Info == {} then
            Info = {
                Text = "Text",
                Duration = 1
            }
        end

        Info.Text = Info.Text or "Text"
        Info.Duration = Info.Duration or 1

        NotificationService.NotificationModule.new(Info)
    end

    function NotificationService:SetColor(Color)
        NotificationService.NotificationModule.SetColor(Color)
    end

-- return NotificationService