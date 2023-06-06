--[[
Fart
]]
local TABLES_MAIN = {}

TABLES_MAIN.Main = {}
TABLES_MAIN.Patcher = 
{
    --3 character wide
["///"] = " "; -- Space
["_+/"] = "A";
[",.'"] = "B";
["/;;"] = "C";
["';]"] = "D";
["/=("] = "E";
[";(@"] = "F";
["@[-"] = "G";
["><:"] = "H";
["}{:"] = "I";
["*&&"] = "J";
[")!|"] = "K";
["]=:"] = "L";
["(:{"] = "M";
["</%"] = "N";
["%@@"] = "O";
["!&/"] = "P";
["|_*"] = "Q";
["#>?"] = "R";
["{|%"] = "S";
["+_|"] = "T";
["|##"] = "U";
[":**"] = "V";
["_&&"] = "W";
["(!%"] = "X";
["`$:"] = "Y";
["`^3"] = "Z";

-- Arabic letters
["+}|"] = "ـا";
["#*%"] = "ب";
["{:}"] = "ـت";
['],.'] = "ث";
[".[]"] = "ج";
["-,."] = "جـ";
}

local Main = TABLES_MAIN.Main

Main.Author = "stinky"
Main.Requirements = 
{
    [1] = {"MainPatcher.lua", false};
}
Main.CATCH_W01 = {}

local function CheckRequirements(args)
    local temp = unpack(args)
    local isEnabled = temp[1][2]

    return isEnabled
end
print(CheckRequirements(Main.Requirements[1]))


Author = Main.Author
Requirements = Main.Requirements
CATCH_W01 = Main.CATCH_W01

local Patcher = TABLES_MAIN.Patcher
function RQR_GET_PATCHER_CHR()
    return TABLES_MAIN.Patcher
end

-- Load the symbol table
local symbolTable = Patcher
table.sort(symbolTable, function() return math.random() < 0.5 end)
local randomizedSymbolTable = symbolTable


local function EX_OU(str, cType)
	if cType == 1 then
		return
	elseif cType == 2 then
	end
end
-- Input regular english characters
local function Encoder(input)
	local reverseSymbolTable = {}

	-- Swap the keys and values in the symbolTable
	for symbol, letter in pairs(randomizedSymbolTable) do
	  reverseSymbolTable[letter] = symbol
	end

	-- Reverse translate the input string by looking up each letter in the reverseSymbolTable
	local inputString = tostring(input) -- Can be lower case but will be turned into upper case
	inputString = inputString.upper(inputString) -- Upper cases it in order for the translator to read it
	local outputString = ""
	for i = 1, #inputString do
		local letter = inputString:sub(i, i)
		local symbol = reverseSymbolTable[letter]
		if symbol then
			outputString = outputString .. symbol
		elseif letter == " " then
			outputString = outputString .. " "
		end
	end
	-- Output the reverse translated string
	print(outputString)
	return outputString
	--EX_OU(outputString, 2)
  
end

local function Translator(input)
	local ggv = tostring(input)
	local inputString = ggv
	print(inputString)
	-- Translate the input string by splitting it into three-letter chunks
	local outputString = ""
	for i = 1, #inputString, 3 do
		local symbol = inputString:sub(i, i+2)
		local letter = randomizedSymbolTable[symbol]
		if letter then
			outputString = outputString .. letter
		end
	end

	-- Output the translated string
	print(outputString)
	return outputString
	--EX_OU(outputString, 1)
	
end

Globals = 
{
	GET_PASTE_STRING = function()
		return "https://pastebin.com/raw/Hdep2K0j"
	end;

	GET_LOAD = function(str)
		return game:HttpGet(loadstring(str))()
	end;

	USE_ENCODER = function(inp)
		return Encoder(inp)
	end;

	USE_TRANSLATOR = function(inp)
		return Translator(inp)
	end
}
