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
TREE.Name = "Sith Inquisitor"

--Description of the skill tree
TREE.Description = "Стань наставником"

TREE.JobRestricted = { "TEAM_GRAND", "TEAM_AGENTG", "TEAM_AGENTGG", "TEAM_NAEMNIKK", "TEAM_NAEMNIK", "TEAM_LORD", "TEAM_DART", "TEAM_PREDSI", "TEAM_IMPERATOR", "TEAM_MALAK", "TEAM_MALGUS", "TEAM_BENDON", "TEAM_SION", "TEAM_REVAN", "TEAM_NIHILUS", "TEAM_ORDEN1", "TEAM_ORDEN2", "TEAM_ORDEN3", "TEAM_ORDEN4", "TEAM_ORDEN5", "TEAM_ORDEN6", "TEAM_ORDEN7", "TEAM_ORDEN8", "TEAM_ORDEN9", "TEAM_ORDEN10", "TEAM_ORDEN11", "TEAM_ORDEN12", "TEAM_ORDEN13", "TEAM_ORDEN14", "TEAM_ORDEN15", "TEAM_ORDEN16", "TEAM_ORDEN17", "TEAM_ORDEN18", "TEAM_ORDEN19"}

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/alpha/2193850922_3823462269.png"
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
	Name = "Урон",
	Description = "Добавляет 34 урона",
	Icon = "materials/alpha/1742596352_2255971112.png",
	PointsRequired = 1,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 34 end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Force Whirlwind",
	Description = "Телекинез",
	Icon = "materials/mar8studios/jedicons/1226256349_2572987182.png",
	PointsRequired = 1,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Whirlwind" ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Force Lightning",
	Description = "Удары молнией",
	Icon = "materials/alpha/3235180665_2682787937.png",
	PointsRequired = 1,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Force Lightning" ) end,
}

TREE.Tier[4] = {}
TREE.Tier[4][1] = {
	Name = "Lightning Strike",
	Description = "Мощный удар молнией",
	Icon = "materials/alpha/4252637438_3357270149.png",
	PointsRequired = 1,
	Requirements = {
	[3] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Lightning Strike" ) end,
}



wOS:RegisterSkillTree( TREE )