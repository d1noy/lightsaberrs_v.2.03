--[[-------------------------------------------------------------------
	Lightsaber Force Powers:
		The available powers that the new saber base uses.
			Powered by
						  _ _ _    ___  ____  
				__      _(_) | |_ / _ \/ ___| 
				\ \ /\ / / | | __| | | \___ \ 
				 \ V  V /| | | |_| |_| |___) |
				  \_/\_/ |_|_|\__|\___/|____/ 
											  
 _____         _                 _             _           
|_   _|__  ___| |__  _ __   ___ | | ___   __ _(_) ___  ___ 
  | |/ _ \/ __| '_ \| '_ \ / _ \| |/ _ \ / _` | |/ _ \/ __|
  | |  __/ (__| | | | | | | (_) | | (_) | (_| | |  __/\__ \
  |_|\___|\___|_| |_|_| |_|\___/|_|\___/ \__, |_|\___||___/
                                         |___/             
----------------------------- Copyright 2017, David "King David" Wiltos ]]--[[
							  
	Lua Developer: King David
	Contact: www.wiltostech.com
		
-- Copyright 2017, David "King David" Wiltos ]]--

local TREE = {}

--Name of the skill tree
TREE.Name = "Force Powers"

--Description of the skill tree
TREE.Description = "Изучите путь Силы."

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "wos/skilltrees/forcepowers/forcepowers.png"

--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 4

--Add user groups that are allowed to use this tree. If anyone is allowed, set this to FALSE ( TREE.UserGroups = false )
TREE.UserGroups = false

TREE.Tier = {}

--Tier format is as follows:
--To create the TIER Table, do the following
--TREE.Tier[ TIER NUMBER ] = {} 
--To populate it with data, the format follows this
--TREE.Tier[ TIER NUMBER ][ SKILL NUMBER ] = DATA
--Name, description, and icon are exactly the same as before
--PointsRequired is for how many skill points are needed to unlock this particular skill
--Requirements prevent you from unlocking this skill unless you have the pre-requisite skills from the last tiers. If you are on tier 1, this should be {}
--OnPlayerSpawn is a function called when the player just spawns
--OnPlayerDeath is a function called when the player has just died
--OnSaberDeploy is a function called when the player has just pulled out their lightsaber ( assuming you have SWEP.UsePlayerSkills = true )




TREE.Tier[1] = {}
TREE.Tier[1][1] = {
	Name = "Force Reflect",
	Description = "Reflect any damage coming at you.",
	Icon = "wos/forceicons/reflect.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Reflect" ) end,
}



TREE.Tier[1][2] = {
	Name = "Force Pull",
	Description = "Pull anyone towards you.",
	Icon = "wos/forceicons/pull.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Pull" ) end,
}



TREE.Tier[1][3] = {
	Name = "Force Push",
	Description = "Push anyone away from you.",
	Icon = "wos/forceicons/push.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Push" ) end,
}



TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Force Heal",
	Description = "Heal a person in your sight.",
	Icon = "wos/forceicons/heal.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Heal" ) end,
}


TREE.Tier[2][2] = {
	Name = "Force Repulse",
	Description = "Pushes everyone around you away.",
	Icon = "wos/forceicons/repulse.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Repulse" ) end,
}


TREE.Tier[2][3] = {
	Name = "Force Combust",
	Description = "Подожги своего врага",
	Icon = "materials/mar8studios/jedicons/3146548022_1837128637.png",
	PointsRequired = 3,
	Requirements = {
	[1] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Combust" ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Force Absorb",
	Description = "Absorb any damage coming at you.",
	Icon = "wos/forceicons/absorb.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Absorb" ) end,
}

TREE.Tier[3][2] = {
	Name = "Storm",
	Description = "Call upon the skies and bring down a whole lightning storm.",
	Icon = "wos/forceicons/storm.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Storm" ) end,
}

TREE.Tier[3][3] = {
	Name = "Charge",
	Description = "Lunge at your opponent.",
	Icon = "wos/forceicons/charge.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Charge" ) end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Force Fighter",
	Description = "Отражение урона",
	Icon = "materials/mar8studios/jedicons/2714485684_3980847607.png",
	PointsRequired = 4,
	Requirements = {
	[3] = { 1, 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Fighter" ) end,
}

TREE.Tier[4][2] = {
	Name = "Saber Throw",
	Description = "Throw your saber at your opponent.",
	Icon = "wos/forceicons/throw.png",
	PointsRequired = 4,
	Requirements = {
	[3] = { 2, 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Saber Throw" ) end,
}




wOS:RegisterSkillTree( TREE )