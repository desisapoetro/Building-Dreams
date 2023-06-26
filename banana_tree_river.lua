-- Building Dreams
-- Written in Lua

-- Function to print a message
function printMessage(msg)
    print(msg)
end

-- Variables
local dreams = {}
local dreamStrength = 0

-- Function to add a dream
function createDream(name, description, power)
    dreams[name] = {
        description = description,
        power = power
    }
    dreamStrength = dreamStrength + power
end

-- Function to print dream information
function printDreamInfo(name)
    local dream = dreams[name]
    if dream ~= nil then
        printMessage("Dream Name: " .. name)
        printMessage("Description: " .. dream.description)
        printMessage("Power Level: " .. dream.power)
    else
        printMessage("Dream not found")
    end
end

-- Function to remove dream
function removeDream(name)
    local dream = dreams[name]
    if dream ~= nil then
        dreamStrength = dreamStrength - dream.power
        dreams[name] = nil
    end
end

-- Function to calculate total dream strength
function calculateDreamStrength()
    return "Total Dream Strength: " .. dreamStrength
end

-- Function to print all dreams
function printDreams()
    for name, dream in pairs(dreams) do
        printMessage("Dream Name: " .. name)
        printMessage("Description: " .. dream.description)
        printMessage("Power Level: " .. dream.power)
    end
end

-- Main Function
function main()
    -- Creating Dreams
    createDream("Explore the Universe", "Go on an intergalactic adventure", 10)
    createDream("Build a City", "Create a thriving metropolis", 15)
    createDream("Time Travel", "Journey back to the past", 20)
    
    -- Printing Dream Info
    printMessage("Dream Information")
    printDreamInfo("Explore the Universe")
    printMessage("------------------------------------")
    printDreamInfo("Build a City")
    printMessage("------------------------------------")
    printDreamInfo("Time Travel")
    printMessage("------------------------------------")
    
    -- Removing Dream
    printMessage("Removing Dream")
    removeDream("Build a City")
    
    -- Printing Total Dream Strength
    printMessage(calculateDreamStrength())
    printMessage("------------------------------------")
    
    -- Printing Remaining Dreams
    printMessage("Remaining Dreams")
    printDreams()
end

-- Executing Main Function
main()