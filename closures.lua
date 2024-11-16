#!/usr/bin/env lua

local base = 2
print("base created: " .. base)

local function inc(start)
    local value = 0
    local local_base = start or base
    return function()
        value = value + 1
        return value + local_base
    end
end

local i1 = inc()
print("i1 created - default start")
local i2 = inc(5)
print("i2 created - start at 5")
print("i1: " .. i1()) --> i1: 3
print("i1: " .. i1()) --> i1: 4
print("i2: " .. i2()) --> i2: 6
base = base + 3
print("base increased: " .. base)
print("i1: " .. i1()) --> i1: 5
print("i2: " .. i2()) --> i2: 7
