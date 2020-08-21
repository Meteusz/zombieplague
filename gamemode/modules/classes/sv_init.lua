DEFINE_BASECLASS( "player_default" )
 
 local PLAYER = {} 

 PLAYER.WalkSpeed = 150
 PLAYER.RunSpeed  = 200
 PLAYER.CanUseFlashlight = true
 PLAYER.TeammateNoCollide = false
 PLAYER.StartHealth = 100
 PLAYER.StartArmor = 100
 PLAYER.DisplayName = "Humans"
 
function PLAYER:Spawn()
    self.Player:SetTeam(1)
end
 
 function PLAYER:Loadout()
     self.Player:RemoveAllAmmo()
 end
 
 player_manager.RegisterClass( "human_default", PLAYER, "player_default" )

 local PLAYER = {} 

 PLAYER.WalkSpeed = 150
 PLAYER.RunSpeed  = 200
 PLAYER.CanUseFlashlight = false
 PLAYER.TeammateNoCollide = false
 PLAYER.DisplayName = "Zombies"
 
function PLAYER:Spawn()
    self.Player:SetTeam(2)
end
 
 function PLAYER:Loadout()
     self.Player:RemoveAllAmmo()
 end

 player_manager.RegisterClass( "zombie_default", PLAYER, "player_default" )