print("Player  testing...  11")

local PlayerService = {}

function PlayerService.Start()
	print("PlayerService started!")

	local Players = game:GetService("Players")

	Players.PlayerAdded:Connect(function(player)
		print(player.Name .. " joined!")

		player.CharacterAdded:Connect(function(character)
			print(player.Name .. "'s character spawned!")

			local humanoid = character:WaitForChild("Humanoid")

			print("Health:", humanoid.Health)

			print("WalkSpeed:", humanoid.WalkSpeed)
		end)
	end)

	-- code space for l8tr
end

return PlayerService
