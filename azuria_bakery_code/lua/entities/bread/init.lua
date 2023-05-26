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
        local canUse, reason = hook.Call("canDarkRPUse", nil, activator, self, caller)
        if canUse == false then
            if reason then DarkRP.notify(caller, 1, 4, reason) end
            return
        end

		local currentEnergy = tonumber(caller:getDarkRPVar("Energy")) or 0
        print(currentEnergy)
        local newEnergy = currentEnergy + 10
        caller:setDarkRPVar("Energy", newEnergy)
        umsg.Start("AteFoodIcon", caller)
        umsg.End()

        self:Remove()
    end
end
