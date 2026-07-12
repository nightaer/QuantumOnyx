
Quantum Onyx Team ( discord.gg/quantumonyx )
            KEYSYSTEM UI built using claude ai
            Service by Luarmor.net
            Compiled by: Flazhy
            Copyright © 2022-2026 Quantum Onyx Team - All Rights Reserved.
]]--
local Directory = "https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/Games"
local Api = "https://api.luarmor.net/files/v4/loaders"
local Scripts = {
    Free = {
        [994732206] = Directory .. "/BloxFruits.lua",
        [9186719164] = Directory .. "/SailorPiece.lua",
        [8191429227] = Directory .. "/CutTrees.lua",
    },
    Premium = {
        [994732206] = Api .. "/0ae9fe4cf963e3a13d25eed0e2ce5940.lua",
        [10004244222] = Api .. "/63980a492928552d074ceee243a918d6.lua",
        [9792947201] = Api .. "/50e8e00251d97215e14313c0bb012058.lua",
        [10200395747] = Api .. "/65265b2869c03f57430ee45357d8c3f9.lua"
    }
}
local SCRIPT_ID = "0ae9fe4cf963e3a13d25eed0e2ce5940"
local FOLDER = "Quantum Onyx Hub"
local KEY_FILE = FOLDER .. "/Key.json"
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local gameId = game.GameId
local function Tween(obj, props, t, style, dir)
    style = style or Enum.EasingStyle.Quint
    dir = dir or Enum.EasingDirection.Out
    TweenService:Create(obj, TweenInfo.new(t, style, dir), props):Play()
end
local function Protect(gui)
    local env = (getgenv and getgenv()) or _G
    if env.HIDEUI then
        gui.Parent = env.HIDEUI
    elseif gethui then
        gui.Parent = gethui()
    elseif syn and syn.protect_gui then
        syn.protect_gui(gui)
        gui.Parent = game:GetService("CoreGui")
    else
        gui.Parent = game:GetService("CoreGui")
    end
end
local function New(class, props, parent)
    local inst = Instance.new(class)
    for k, v in pairs(props) do
        if k ~= "Children" and k ~= "Parent" then
            pcall(function() inst[k] = v end)
        end
