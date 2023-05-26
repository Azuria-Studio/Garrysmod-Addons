AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/weapons/c_models/c_bread/c_bread_baguette.mdl")
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
        local HGC = AzuriaBakery.UseHungerMod 
        if HGC == true then
            caller:ChatPrint("Azuria Bakery : La fonctionnalité est en développement elle arrivera demainz")
        else
            caller:SetHealth(caller:Health() + 10)
        end
            self:Remove() 
    end
end