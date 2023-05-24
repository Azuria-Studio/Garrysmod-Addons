AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props_c17/FurnitureDrawer001a_Chunk03.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self.IsRunning = false 
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
        phys:Wake()
    end
end



function ENT:Use(activator, caller)
    if IsValid(caller) and caller:IsPlayer() then
        caller:ChatPrint("Le pain est consommé.")
        local lol = false 
        if lol == true then
            caller:SetHealth(caller:Health() + 10)
        else
            caller:SetEnergy(caller:GetEnergy() + 10)
        end
            self:Remove() 
    end
end