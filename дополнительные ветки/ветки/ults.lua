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
TREE.Name = "Ultimates"
TREE.JobRestricted = { "TEAM_ORDEN9", "TEAM_GRAND", "TEAM_IMPERATOR", "TEAM_ORDEN5", "TEAM_ORDEN6", "TEAM_ORDEN7", "TEAM_ORDEN3", "TEAM_ORDEN18" "TEAM_NASTOIKA", "TEAM_PREDSI"} 
--Description of the skill tree
TREE.Description = "Познай мощные приемы Силы"

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "wos/skilltrees/forcepowers/forcepowers.png"

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
	Name = "Kyber Slam",
	Description = "Slam the ground with a massive amount of force.",
	Icon = "wos/devestators/slam.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddDevestator( "Kyber Slam" ) end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Lightning Coil",
	Description = "Strike everyone around you with lightning.",
	Icon = "wos/devestators/coil.png",
	PointsRequired = 5,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddDevestator( "Lightning Coil" ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Sonic Discharge",
	Description = "Blind everyone around you.",
	Icon = "wos/devestators/sonic.png",
	PointsRequired = 5,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddDevestator( "Sonic Discharge" ) end,
}


wOS:RegisterSkillTree( TREE )