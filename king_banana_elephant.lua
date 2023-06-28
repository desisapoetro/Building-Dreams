--[[
-- Building Dreams
--]]

-- Set up global constants
local DREAM_GOAL = "The total success of all those who take part"

-- Set up global variables
local dreamers = {}

-- Helper function to add dreamers
local function addDreamer(name, dreams)
	dreamers[name] = {
		name = name,
		dreams = dreams
	}
end

-- Add dreamers
addDreamer("Alice", "To make the world a better place")
addDreamer("Bob", "To become a successful entrepreneur")
addDreamer("Charlie", "To explore the stars")

-- Helper function to check when dreamers are done
local function areDreamersDone()
	for _, dreamer in pairs(dreamers) do
		if dreamer.dreams ~= DREAM_GOAL then
			return false
		end
	end
	return true
end

-- Helper function to print the current status of dreamers
local function printDreamersStatus()
	for _, dreamer in pairs(dreamers) do
		print("Dreamer " .. dreamer.name .. " is " .. dreamer.dreams)
	end
end

-- Starting message
print("Welcome to Building Dreams!")

-- Main loop
while not areDreamersDone() do
	-- Ask the dreamers what they want to do
	for _, dreamer in pairs(dreamers) do
		dreamer.dreams = io.read("*line")
	end

	-- Print out the current status
	printDreamersStatus()
end

-- Ending message
print("Congratulations! You have achieved the collective dream goal: " .. DREAM_GOAL)