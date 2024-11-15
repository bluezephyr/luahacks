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
print("i1 created - no base")
local i2 = inc(5)
print("i2 created - base 5")
print("i1: " .. i1())
print("i1: " .. i1())
print("i2: " .. i2())
base = base + 3
print("base increased: " .. base)
print("i1: " .. i1())
print("i2: " .. i2())
