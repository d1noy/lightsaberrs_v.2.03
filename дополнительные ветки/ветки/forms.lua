
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
	Contact: http://steamcommunity.com/groups/wiltostech
		
-- Copyright 2017, David "King David" Wiltos ]]--

local TREE = {}

--Name of the skill tree
TREE.Name = "Combat Forms"

--Description of the skill tree
TREE.Description = "Мастер всех стоек!"

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "wos/skilltrees/forms/forms_skill.png"

--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 3

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
	Name = "Ши-чо 1",
	Description = "Дает вам Стойку Ши-чо 1",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Ши-чо", 1 ) end,
}

TREE.Tier[1][2] = {
	Name = "Макаши 1",
	Description = "Дает вам Стойку Макаши 1",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Макаши", 1 ) end,
}

TREE.Tier[1][3] = {
	Name = "Соресу 1",
	Description = "Дает вам Стойку Соресу 2",
	Icon = "wos/skilltrees/forms/versatile.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Соресу", 1 ) end,
}

TREE.Tier[1][4] = {
	Name = "Атару 1",
	Description = "Дает вам Стойку Атару 1",
	Icon = "wos/skilltrees/forms/agile.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Атару", 1 ) end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Ши-чо 2",
	Description = "Дает вам Стойку Ши-чо 2",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Ши-чо", 2 ) end,
}

TREE.Tier[2][2] = {
	Name = "Макаши 2",
	Description = "Дает вам Стойку Макаши 2",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Макаши", 2 ) end,
}

TREE.Tier[2][3] = {
	Name = "Соресу 2",
	Description = "Дает вам Стойку Соресу 2",
	Icon = "wos/skilltrees/forms/versatile.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Соресу", 2 ) end,
}

TREE.Tier[2][4] = {
	Name = "Атару 2",
	Description = "Дает вам Стойку Атару 2",
	Icon = "wos/skilltrees/forms/agile.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Атару", 2 ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Ши-чо 3",
	Description = "Дает вам Стойку Ши-чо 3",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Ши-чо", 3 ) end,
}

TREE.Tier[3][2] = {
	Name = "Макаши 3",
	Description = "Дает вам Стойку Макаши 3",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Макаши", 3 ) end,
}

TREE.Tier[3][3] = {
	Name = "Соресу 3",
	Description = "Дает вам Стойку Соресу 3",
	Icon = "wos/skilltrees/forms/versatile.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Соресу", 3 ) end,
}

TREE.Tier[3][4] = {
	Name = "Атару 3",
	Description = "Дает вам Стойку Атару 3",
	Icon = "wos/skilltrees/forms/agile.png",
	PointsRequired = 3,
	Requirements = {
	[2] = { 4 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Атару", 3 ) end,
}

TREE.Tier[1][5] = {
	Name = "Аррогант 1",
	Description = "Дает вам Стойку Аррогант 1",
        Icon = "wos/skilltrees/ravager/release.png",
	PointsRequired = 0,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Аррогант", 1 ) end,
}

TREE.Tier[2][5] = {
	Name = "Аррогант 2",
	Description = "Дает вам Стойку Аррогант 2",
        Icon = "wos/skilltrees/ravager/release.png",
	PointsRequired = 2,
	Requirements = {
	[1] = { 5 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Aррогант", 2 ) end,
}

TREE.Tier[3][5] = {
	Name = "Аррогант 3",
	Description = "Дает вам Стойку Аррогант 3",
        Icon = "wos/skilltrees/ravager/release.png",
	PointsRequired = 2,
	Requirements = {
	[2] = { 5 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Аррогант", 3 ) end,
}
wOS:RegisterSkillTree( TREE )