
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
TREE.Name = "Healer"

--Description of the skill tree
TREE.Description = "Лечите своих друзей"

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/mar8studios/jedicons/1793018299_817984064.png"

--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 2

--Add user groups that are allowed to use this tree. If anyone is allowed, set this to FALSE ( TREE.UserGroups = false )
TREE.UserGroups = false


-- TREE.JobRestricted = { "TEAM_J4", "TEAM_J6", "TEAM_J7", "TEAM_J8", "TEAM_DON2", "TEAM_S6", "TEAM_S7", "TEAM_S8", "TEAM_S9", "TEAM_ORDREV1", "TEAM_ORDREV2", "TEAM_ORDREV3", "TEAM_ORDREV4", "TEAM_ORDREV5", "TEAM_LD1", "TEAM_LD2", "TEAM_LD3", "TEAM_LD4", "TEAM_LD5", "TEAM_MK1"  }
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
	Name = "Един с Силой",
	Description = "Прибавляет +75 Силы",
	Icon = "materials/mar8studios/jedicons/1699589616_1308317692.png",
	PointsRequired = 5,
	Requirements = {},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:SetMaxForce( wep:GetMaxForce() + 75 ) end,
}

TREE.Tier[2] = {}
TREE.Tier[2][1] = {
	Name = "Лечащий поток",
	Description = "Лечит вашу цель",
	Icon = "materials/mar8studios/jedicons/3099926829_2656096473.png",
	PointsRequired = 10,
	Requirements = {
	[1] = { 1 },
	},
	OnPlayerSpawn = function( ply ) end,
	OnPlayerDeath = function( ply ) end,
	OnSaberDeploy = function( wep ) wep:AddForcePower( "Healing Stream" ) end,
}

wOS:RegisterSkillTree( TREE )