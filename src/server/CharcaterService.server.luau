print("Testing Character.server...  11")

local CharacterService = {}

function CharacterService.Start()
	print("CharacterService started!")

	local character = script.Parent
	local humanoid = character:WaitForChild("Humanoid")

	-- set all values here
	humanoid.WalkSpeed = 40
	humanoid.scale = 4
	humanoid.Parent = workspace
	humanoid.Health = 100

	humanoid.Jumped:Connect(function()
		print("The player jumped!")
	end)
	while true do
		print("Health:", humanoid.Health)
		print("WalkSpeed:", humanoid.WalkSpeed)
		humanoid.Health -= 10
		wait(1)
	end
end

return CharacterService
