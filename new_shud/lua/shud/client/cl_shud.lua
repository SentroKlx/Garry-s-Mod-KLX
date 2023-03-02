hook.Add("HUDPaint", "ShudDarkRP", function()
       
        local health = math.Clamp(LocalPlayer() : Health(),0,100)
        local armor = math.Clamp(LocalPlayer() : Armor(),0,100)
        local money = LocalPlayer() : getDarkRPVar("money")
        local food = LocalPlayer() : getDarkRPVar("Energy")
        
        draw.RoundedBox(5,40,ScrH() - 50, 150, 25, Shud.HUD.Config["ColorMoney"]) // Argent
        draw.RoundedBox(5,40,ScrH() - 90, 150, 25,Shud.HUD.Config["ColorFoodBackground"]) // Faim
        draw.RoundedBox(5,40,ScrH() - 90, food * 1.50, 25,Shud.HUD.Config["ColorFood"]) // Faim
        draw.RoundedBox(5,40,ScrH() - 130, 150, 25,Shud.HUD.Config["ColorArmorBackground"]) // Fond Armure
        draw.RoundedBox(5,40,ScrH() - 130, armor * 1.50, 25,Shud.HUD.Config["ColorArmor"]) // Armure
        draw.RoundedBox(5,40,ScrH() - 170, 150, 25,Shud.HUD.Config["ColorHealthBackground"]) // Fond Vie
        draw.RoundedBox(5,40,ScrH() - 170, health * 1.50, 25,Shud.HUD.Config["ColorHealth"]) // Vie
        
        if health > 100 then
            health = 100
        end
        
        if armor > 100 then
            armor = 100
                
        end
end)
    
local IconHealth = Material( "materials/image_shud/health.png" )

hook.Add( "HUDPaint", "IconHealth", function()
	surface.SetDrawColor( Shud.HUD.Config["ColorIconHealth"] )
	surface.SetMaterial( IconHealth )
	surface.DrawTexturedRect( 5,730, 25, 25 )
        
end )

local IconKevlar = Material( "materials/image_shud/kevlar.png" )

hook.Add( "HUDPaint", "IconKevlar", function()
	surface.SetDrawColor( Shud.HUD.Config["ColorIconArmor"] ) -- Set the drawing color
	surface.SetMaterial( IconKevlar ) -- Use our cached material
	surface.DrawTexturedRect( 5,770, 25, 25 ) -- Actually draw the rectangle
end )

local IconBurger = Material( "materials/image_shud/burger.png" )

hook.Add( "HUDPaint", "IconBurger", function()
	surface.SetDrawColor( Shud.HUD.Config["ColorIconBurger"] ) -- Set the drawing color
	surface.SetMaterial( IconBurger ) -- Use our cached material
	surface.DrawTexturedRect( 5,810, 25, 25 ) -- Actually draw the rectangle
end )

local IconMoney = Material( "materials/image_shud/money.png" )

hook.Add( "HUDPaint", "IconMoney", function()
	surface.SetDrawColor( Shud.HUD.Config["ColorIconMoney"] ) -- Set the drawing color
	surface.SetMaterial( IconMoney ) -- Use our cached material
	surface.DrawTexturedRect( 5,850, 25, 25 ) -- Actually draw the rectangle
end )

local ShudDisabled = {
    ["CHudHealth"] = true,
    ["CHudBattery"] = true,
    ["CHudAmmo"] = true,
    ["CHudSecondaryAmmo"] = true,

    ["DarkRP_HUD"] = true,
    ["DarkRP_EntityDisplay"] = false,
    ["DarkRP_LocalPlayerHUD"] = false,
    ["DarkRP_Hungermod"] = true,
    ["DarkRP_Agenda"] = false,
    ["DarkRP_LockdownHUD"] = false,    
    ["DarkRP_ArrestedHUD"] = false,   
    ["DarkRP_ChatReceivers"] = false,
}

hook.Add("HUDShouldDraw", "ShudDisabled_Default", function(name) 
    if ShudDisabled[name] then return false end
end)