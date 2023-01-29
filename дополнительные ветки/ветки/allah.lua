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
TREE.Name = "test"

--Description of the skill tree
TREE.Description = "test"

TREE.JobRestricted = { "TEAM_ORDEN8"}

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/alpha/2193850922_3823462269.png"
--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 5

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
	Name = "Adrenaline",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Adrenaline" ) end,
}

TREE.Tier[1][2] = {
	Name = "Force Blind",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Blind" ) end,
}

TREE.Tier[2] = {}
TREE.Tier[1][2] = {
	Name = "Force Slow",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Slow" ) end,
}

TREE.Tier[2][2] = {
	Name = "Force Stasis",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Stasis" ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Group Lightning",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Group Lightning" ) end,
}

TREE.Tier[3][2] = {
	Name = "Electric Judgement",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Electric Judgement" ) end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Destruction",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Destruction" ) end,
}

TREE.Tier[4][2] = {
	Name = "Group Choke",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Group Choke" ) end,
}

TREE.Tier[5] = {}
TREE.Tier[5][1] = {
	Name = "Ground Slam",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Ground Slam" ) end,
}

wOS:RegisterSkillTree( TREE )