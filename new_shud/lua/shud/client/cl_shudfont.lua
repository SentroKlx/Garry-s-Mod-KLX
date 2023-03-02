surface.CreateFont( "ShudFont", {
    font = "Circular Std Medium", 
    extended = false,
    size = 20,
    weight = 400,
})

hook.Add("HUDPaint", "Font", function()
        local health = LocalPlayer() : Health()
        local armor = LocalPlayer() : Armor()
        local money = LocalPlayer() : getDarkRPVar("money")
        local food = LocalPlayer() : getDarkRPVar("Energy")
        
        draw.SimpleText(health.. " / 100", "ShudFont", 80,ScrH() - 168, Color(255, 255, 255))
        draw.SimpleText(armor.. " / 100", "ShudFont", 85,ScrH() - 128, Color(255, 255, 255))
        draw.SimpleText(food.. " / 100", "ShudFont", 80,ScrH() - 88, Color(255, 255, 255))
        draw.SimpleText(money..  Shud.HUD.Config["Money"], "ShudFont", 85,ScrH() - 48, Color(255, 255, 255))

end)

