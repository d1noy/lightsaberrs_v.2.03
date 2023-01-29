
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
TREE.Name = "Way of the Force"

--Description of the skill tree
TREE.Description = "Изучите путь Силы."

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/mar8studios/jedicons/4116359658_1169662233.png"

--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 10

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
TREE.Tier[1][2] = {
	Name = "Прыжок силы",
	Description = "Усильте свой прыжок",
	Icon = "wos/forceicons/leap.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Leap" ) end,
}

TREE.Tier[1][3] = {
	Name = "Толчок силы",
	Description = "Оттолкните от себя противника",
	Icon = "wos/forceicons/push.png",
	PointsRequired = 1,
	Requirements = {
	[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Push" ) end,
}


TREE.Tier[1][1] = {
	Name = "Притяжение силы",
	Description = "Притяните противника к себе",
	Icon = "wos/forceicons/pull.png",
	PointsRequired = 1,
	Requirements = {
	[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Pull" ) end,
}


TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Defensive 1",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 1,
	Requirements = {
	[1] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Defensive", 1 ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Defensive 2",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 1,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Defensive", 2 ) end,
}


TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Вскрытие силой",
	Description = "Откройте дверь на расстоянии силой",
	Icon = "materials/mar8studios/jedicons/909775362_2172479202.png",
	PointsRequired = 1,
	Requirements = {
	[3] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Breach" ) end,
}

TREE.Tier[4][2] = {
	Name = "Сила отталкивания",
	Description = "Отталкните всех от себя",
	Icon = "materials/mar8studios/jedicons/118608540_3367895657.png",
	PointsRequired = 1,
	Requirements = {
	[4] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Repulse" ) end,
}

TREE.Tier[4][3] = {
	Name = "Групповой толчок",
	Description = "Оттолкните всех в радиусе",
	Icon = "materials/mar8studios/jedicons/1495002017_299589555.png",
	PointsRequired = 1,
	Requirements = {
	[4] = { 1 },
	[3] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Group Push" ) end,
}


TREE.Tier[5] = {}
TREE.Tier[5][1] = {
	Name = "Defensive 3",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/defensive.png",
	PointsRequired = 1,
	Requirements = {
	[4] = { 1, 2, 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Defensive", 3 ) end,
}

TREE.Tier[6] = {}
TREE.Tier[6][1] = {
	Name = "Групповое притяжение",
	Description = "Притяните всех в радиусе",
	Icon = "materials/mar8studios/jedicons/2193028204_1579101984.png",
	PointsRequired = 1,
	Requirements = {
	[5] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Group Pull" ) end,
}

TREE.Tier[7] = {}
TREE.Tier[7][1] = {
	Name = "Aggressive 1",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 1,
	Requirements = {
	[6] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Aggressive", 1 ) end,
}

TREE.Tier[7][2] = {
	Name = "Aggressive 2",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 1,
	Requirements = {
	[7] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Aggressive", 2 ) end,
}

TREE.Tier[7][3] = {
	Name = "Aggressive 3",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/aggressive.png",
	PointsRequired = 1,
	Requirements = {
	[7] = { 1 },
	[6] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Aggressive", 3 ) end,
}

TREE.Tier[8] = {}
TREE.Tier[8][1] = {
	Name = "Blade Dancer",
	Description = "Добавляет стойку",
	Icon = "materials/mar8studios/jedicons/2145468832_3849998029.png",
	PointsRequired = 1,
	Requirements = {
	[7] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Blade Dancer", 1 ) end,
}

TREE.Tier[8][2] = {
	Name = "Fury",
	Description = "Добавляет стойку",
	Icon = "materials/mar8studios/jedicons/2142334222_3159379222.png",
	PointsRequired = 1,
	Requirements = {
	[7] = { 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Fury", 1 ) end,
}


TREE.Tier[9] = {}
TREE.Tier[9][1] = {
	Name = "Arrogant 1",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/arrogant.png",
	PointsRequired = 1,
	Requirements = {
	[8] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Arrogant", 1 ) end,
}

TREE.Tier[9][2] = {
	Name = "Arrogant 2",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/arrogant.png",
	PointsRequired = 1,
	Requirements = {
	[9] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Arrogant", 2 ) end,
}

TREE.Tier[9][3] = {
	Name = "Arrogant 3",
	Description = "Добавляет стойку",
	Icon = "wos/skilltrees/forms/arrogant.png",
	PointsRequired = 1,
	Requirements = {
	[9] = { 2 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Arrogant", 3 ) end,
}

TREE.Tier[10] = {}
TREE.Tier[10][1] = {
	Name = "Левитация",
	Description = "Левитируйте с помощью силы",
	Icon = "materials/mar8studios/jedicons/654096368_1485517089.png",
	PointsRequired = 1,
	Requirements = {
	[9] = { 1, 2, 3 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Levitate" ) end,
}









wOS:RegisterSkillTree( TREE )