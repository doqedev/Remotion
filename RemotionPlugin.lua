local ws = game:GetService("Workspace")
while wait(0.5) do
	local loaderasset = ws:FindFirstChild("RemotionLoaderAsset")
	if
		loaderasset
		and loaderasset:FindFirstChild("RemotionLoader")
		and not ws:FindFirstChild("ToolboxTemporaryInsertModel")
	then
		require(loaderasset:FindFirstChild("RemotionLoader")):Initiate(true) -- will directly hide the remotion load message
	end
end
