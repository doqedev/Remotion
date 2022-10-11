local module = {}

function checkForScriptAndDelete(parent: Instance, scriptname: string)
	if parent:FindFirstChild(scriptname) then
		parent:FindFirstChild(scriptname):Destroy()
	end
end

function module:Initiate(isplugin: boolean)
	checkForScriptAndDelete(game:GetService("ServerScriptService"), "Remotion")
	checkForScriptAndDelete(game:GetService("StarterPlayer").StarterPlayerScripts, "Remotion")
	for _, v: BaseScript in pairs(script:GetChildren()) do
		if v:IsA("BaseScript") then
			if v.Name == "RemotionServer" then
				v.Name = "Remotion"
				v.Parent = game:GetService("ServerScriptService")
			else
				v.Parent = game:GetService("StarterPlayer").StarterPlayerScripts
			end
			v.Enabled = true
		end
	end
	game:GetService("Workspace").RemotionLoaderAsset:Destroy()
	task.spawn(function()
		if isplugin ~= true then
			local hint = Instance.new("Hint", game:GetService("Workspace"))
			hint.Text = "Remotion has loaded! Now you can use this remote log spammer in your own ROBLOX games."
			hint.Name = "THIS WILL AUTOMATICALLY DELETE IN 5 SECONDS"
			wait(4)
			hint:Destroy()
		end
	end)
end

return module
