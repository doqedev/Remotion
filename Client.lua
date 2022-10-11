local remTable = {
	game:GetService("JointsService"):FindFirstChildOfClass("RemoteFunction"),
	game:GetService("JointsService"):FindFirstChildOfClass("RemoteEvent"),
}

function generateRandomString(len: number?)
	len = len or 8
	local generated = ""
	for i = 1, len do
		local a = "`1234567890!@#$%^&*()-=qwrtyuiop[]{}asdfghjkl;:'\"zxcvbm,<.>/?QWERTYUIOPAASDFGHJKLZXCVBNM"
		generated = generated .. a:sub(math.random(1, #a), math.random(1, #a))
	end
	return generated
end

task.spawn(function()
	while wait(0.01) do
		script.Name = generateRandomString(50)
		for _, v in pairs(remTable) do
			pcall(function()
				v.Name = generateRandomString(50)
			end)
		end
	end
end)

task.spawn(function()
	while wait(0.05) do
		for _, v in pairs(remTable) do
			if v ~= nil then
				local a = v:Clone()
				a.Parent = game:GetService("JointsService")
				spawn(function()
					while wait(0.05) do
						if a ~= nil then
							a.Name = generateRandomString(50)
						end
					end
				end)
				spawn(function()
					wait(0.25)
					a:Destroy()
				end)
			end
		end
	end
end)

task.spawn(function()
	while wait(0.05) do
		for _, rem in pairs(remTable) do
			if rem ~= nil and (rem:FindFirstChild(" ") ~= nil) then
				rem.Name = generateRandomString(50)
				pcall(function()
					if rem:IsA("RemoteEvent") then
						rem:FireServer("auth")
					else
						rem:InvokeServer("auth")
					end
				end)
			end
		end
	end
end)
