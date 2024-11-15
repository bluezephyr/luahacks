#!/usr/bin/env lua

local function fill_list(nof_items)
    local a = {}
    for i = 1, nof_items do
        a[i] = io.read()
    end
    return a
end

print("How many items do you want?")
local items = io.read()
print("Ok. Enter " .. items .. " items. End each item with RETURN")
local list = fill_list(items)
local middle_item = math.ceil(items / 2)
print("The middle item (" .. middle_item .. ") is " .. list[middle_item])
