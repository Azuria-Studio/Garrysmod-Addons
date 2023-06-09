AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    self:SetModel("models/props/de_inferno/clayoven.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self.IsRunning = false 
    local phys = self:GetPhysicsObject()
    if (phys:IsValid()) then
        phys:Wake()
    end
    self.isBaking = false
    self.finishBakeTime = 0
end

function ENT:StartTouch(ent)
    if ent:GetClass() == "dough" and self.isBaking == false then
        ent:Remove()
        self.isBaking = true
        self.finishBakeTime = CurTime() + AzuriaBakery.CookTime
    end
end
function ENT:Think()
    if self.isBaking == true then
            self:SetColor(AzuriaBakery.CookColor)
    else 
        self:SetColor(Color(255,255,255,120))
    end

    if self.isBaking == true then
        if self.finishBakeTime <= CurTime() then
            self.isBaking = false
			local pos = self:LocalToWorld(Vector(0,20,30))
            local bread = ents.Create("bread")
            bread:SetPos(pos)
            bread:Spawn()
        end
    end
end

