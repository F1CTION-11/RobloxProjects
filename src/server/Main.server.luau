print("Hello world, from server!   Testing...  11")

local CharacterService = require(script.Parent.CharacterService)
local PlayerService = require(script.Parent.PlayerService)

CharacterService.Start()
PlayerService.Start()

-- Create a new Part instance
local part = Instance.new("Part")
part.Name = "MyPart"
part.Size = Vector3.new(5, 2, 5)
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.BrickColor = BrickColor.new("Really red")
part.Parent = workspace -- Add the part to the world

-- Print a message to the output
print("Hello world!")
