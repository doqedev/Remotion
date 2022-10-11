local plrsToKick = {}
local Players = game:GetService("Players")
local Remote = Instance.new("RemoteFunction", game:GetService("JointsService"))
local RemoteEvent = Instance.new("RemoteEvent", game:GetService("JointsService"))
Instance.new("BinaryStringValue", Remote).Name = " "
Instance.new("BinaryStringValue", RemoteEvent).Name = " "

local RemotionEventObject = Instance.new("ObjectValue", game:GetService("ServerScriptService"))
RemotionEventObject.Value = RemoteEvent
RemotionEventObject.Name = "RemotionMainEvent"

local RemotionFunctionObject = Instance.new("ObjectValue", game:GetService("ServerScriptService"))
RemotionEventObject.Value = Remote
RemotionEventObject.Name = "RemotionMainFunction"

function checkauth(plr, type: string)
	if type == "auth" then
		plrsToKick[plr] = nil
	end
end

Remote.OnServerInvoke = checkauth
RemoteEvent.OnServerEvent:Connect(checkauth)

--task.spawn(function()
--	while wait(1) do
--		for _,v: Player in pairs(plrsToKick) do
--			local sc = script.LocalScript:Clone()
--			sc.Parent = v.PlayerScripts
--			sc.Enabled = true
--		end
--	end
--end)

task.spawn(function()
	while wait(15) do
		print("servercheck passd")
		for i, _ in pairs(plrsToKick) do
			i:Kick()
		end
		wait(0.1)
		for _, v in pairs(Players:GetPlayers()) do
			plrsToKick[v] = true
		end
	end
end)
