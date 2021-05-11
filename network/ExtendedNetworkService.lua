local ExtendedNetworkService = {}

--// Backup Variables
ExtendedNetworkService.JobID = game.JobId
ExtendedNetworkService.PlaceID = game.PlaceId
ExtendedNetworkService.Players = game.Players

function ExtendedNetworkService:DisconnectFromServer()
game.Players.LocalPlayer:Kick("Disconnecting from Server.")
wait()
game:GetService("GuiService"):ClearError()
end

function ExtendedNetworkService:ReconnectToServer()                
game:GetService("TeleportService"):TeleportToPlaceInstance(ExtendedNetworkService.PlaceID, ExtendedNetworkService.JobID, game.Players.LocalPlayer)
end
--// Exploits only

--// Comment this out if you are not loadstringing or dofiling this.
return ExtendedNetworkService
