AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_trainstation/TrackSign02.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self.IsRunning = false 
    local phys = self:GetPhysicsObject()
    if (phts:IsValid()) then
        phys:Wake()
    end
end