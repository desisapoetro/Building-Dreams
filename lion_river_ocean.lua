--Global Variables
local title = "Building Dreams"
local linesToWrite = 2000

--Function to generate random string
local function RandomString(length)
  local str = ""
  local possible = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

  for i = 1, length do
    str = str .. string.sub(possible, math.random(1, #possible), math.random(1, #possible))
  end

  return str
end

--Function to write lines
local function WriteLines(fileName, totalLines)
  local file = io.open(fileName, "w+")

  for i = 1, totalLines do
    local line = RandomString(math.random(1, 20))
    file:write(line .. "\n")
  end

  file:close()
end

--Call function to write lines to file
WriteLines(title .. ".lua", linesToWrite)