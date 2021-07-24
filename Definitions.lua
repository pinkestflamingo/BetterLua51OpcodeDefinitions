--[[
  Author: Kiko
  Date: 24 Juli 2021

  Generated using this code:

local lua_opcode_names = {
	"MOVE",     "LOADK",     "LOADBOOL", "LOADNIL",
	"GETUPVAL", "GETGLOBAL", "GETTABLE", "SETGLOBAL",
	"SETUPVAL", "SETTABLE",  "NEWTABLE", "SELF",
	"ADD",      "SUB",       "MUL",      "DIV",
	"MOD",      "POW",       "UNM",      "NOT",
	"LEN",      "CONCAT",    "JMP",      "EQ",
	"LT",       "LE",        "TEST",     "TESTSET",
	"CALL",     "TAILCALL",  "RETURN",   "FORLOOP",
	"FORPREP",  "TFORLOOP",  "SETLIST",  "CLOSE",
	"CLOSURE",  "VARARG"
};
local lua_opcode_types = {
	"ABC",  "ABx", "ABC",  "ABC",
	"ABC",  "ABx", "ABC",  "ABx",
	"ABC",  "ABC", "ABC",  "ABC",
	"ABC",  "ABC", "ABC",  "ABC",
	"ABC",  "ABC", "ABC",  "ABC",
	"ABC",  "ABC", "AsBx", "ABC",
	"ABC",  "ABC", "ABC",  "ABC",
	"ABC",  "ABC", "ABC",  "AsBx",
	"AsBx", "ABC", "ABC", "ABC",
	"ABx",  "ABC",
}
print"local lua_opcode_skeet = {"
for Index, Value in pairs(lua_opcode_names) do
  print(string.format('%s = {', Value))
  print(string.format('num = %d,', Index))
  print(string.format('type = "%s",', lua_opcode_types[Index]))
  print(string.format('int = %d, -- order in: enum OpMode {iABC, iABx, iAsBx};', (lua_opcode_types[Index] == "ABC" and 1) or (lua_opcode_types[Index] == "ABx" and 2) or (lua_opcode_types[Index] == "AsBx" and 3)))
  

  print"},"
end
print"}"
]]
local lua_opcode_51 = {
    MOVE = {
        num = 1,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LOADK = {
        num = 2,
        type = "ABx",
        int = 2 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LOADBOOL = {
        num = 3,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LOADNIL = {
        num = 4,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    GETUPVAL = {
        num = 5,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    GETGLOBAL = {
        num = 6,
        type = "ABx",
        int = 2 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    GETTABLE = {
        num = 7,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SETGLOBAL = {
        num = 8,
        type = "ABx",
        int = 2 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SETUPVAL = {
        num = 9,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SETTABLE = {
        num = 10,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    NEWTABLE = {
        num = 11,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SELF = {
        num = 12,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    ADD = {
        num = 13,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SUB = {
        num = 14,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    MUL = {
        num = 15,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    DIV = {
        num = 16,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    MOD = {
        num = 17,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    POW = {
        num = 18,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    UNM = {
        num = 19,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    NOT = {
        num = 20,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LEN = {
        num = 21,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    CONCAT = {
        num = 22,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    JMP = {
        num = 23,
        type = "AsBx",
        int = 3 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    EQ = {
        num = 24,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LT = {
        num = 25,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    LE = {
        num = 26,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    TEST = {
        num = 27,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    TESTSET = {
        num = 28,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    CALL = {
        num = 29,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    TAILCALL = {
        num = 30,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    RETURN = {
        num = 31,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    FORLOOP = {
        num = 32,
        type = "AsBx",
        int = 3 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    FORPREP = {
        num = 33,
        type = "AsBx",
        int = 3 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    TFORLOOP = {
        num = 34,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    SETLIST = {
        num = 35,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    CLOSE = {
        num = 36,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    CLOSURE = {
        num = 37,
        type = "ABx",
        int = 2 -- order in: enum OpMode {iABC, iABx, iAsBx};
    },
    VARARG = {
        num = 38,
        type = "ABC",
        int = 1 -- order in: enum OpMode {iABC, iABx, iAsBx};
    }
}
