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
TREE.Name = "Master of Dual Saber"

TREE.JobRestricted = { "TEAM_ORDEN18", "TEAM_ORDEN17", "TEAM_ORDEN16", "TEAM_ORDEN15", "TEAM_ORDEN14", "TEAM_ORDEN13", "TEAM_ORDEN12", "TEAM_ORDEN10", "TEAM_ORDEN9", "TEAM_VOIN", "TEAM_VOINN", "TEAM_LORD", "TEAM_DART", "TEAM_IMPERATOR", "TEAM_RICARR", "TEAM_RICAR", "TEAM_MASTER", "TEAM_MAGISTR", "TEAM_GRAND", "TEAM_GRAY", "TEAM_NEADMIN", "TEAM_PIRAT", "TEAM_DARKLORD", "TEAM_ASSASINGLAVA", "TEAM_ASSASIN", "TEAM_PIRATT", "TEAM_ORDEN5", "TEAM_OTPRISK", "TEAM_KARAUL", "TEAM_EXARH", "TEAM_OFFICER", "TEAM_EMPER", "TEAM_MORTUSINTUS", "TEAM_ORDEN6" }
--Description of the skill tree
TREE.Description = "Learn the way of the Force."

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/mar8studios/jedicons/3329016444_4138913350.png"

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
	Name = "Dual Saber",
	Description = "You get the dual personal lightsaber",
	Icon = "materials/mar8studios/jedicons/927978480_2734099818.png",
	PointsRequired = 10,
	Requirements = {},
	OnPlayerSpawn = function( ply ) ply:Give("weapon_lightsaber_personal_dual") end,
	OnPlayerDeath = function( ply ) end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Speed 1",
	Description = "Добавляет 45 скорости передвижение",
	Icon = "materials/mar8studios/jedicons/4173111886_1308476029.png",
	PointsRequired = 3,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) ply:SetRunSpeed( ply:GetRunSpeed() + 45 ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) end,
}

TREE.Tier[3] = {}
TREE.Tier[3][1] = {
	Name = "Visigoth",
	Description = "Force in motion ,motion in the saber !",
	Icon = "materials/mar8studios/jedicons/1774575165_2196688930.png",
	PointsRequired = 10,
	Requirements = {
	[2] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForm( "Visigoth", 1 ) end,
}

wOS:RegisterSkillTree( TREE )