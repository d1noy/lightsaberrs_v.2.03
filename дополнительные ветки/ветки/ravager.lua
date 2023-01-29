local TREE = {}

--Name of the skill tree
TREE.Name = "Ravager"

--Description of the skill tree
TREE.Description = "ТЫ СИЛА"

--Icon for the skill tree ( Appears in category menu and above the skills )
TREE.TreeIcon = "materials/mar8studios/jedicons/361716114_12632406.png"



TREE.JobRestricted = { "TEAM_ORDEN1", "TEAM_LORD", "TEAM_MASTER"}


--What is the background color in the menu for this 
TREE.BackgroundColor = Color( 255, 0, 0, 25 )

--How many tiers of skills are there?
TREE.MaxTiers = 1

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
       Description = "Добавляет 66 урона",
       Icon = "materials/alpha/1742596352_2255971112.png",
       PointsRequired = 1,
       Requirements = {},
       OnPlayerSpawn = function( ply ) end,
       OnPlayerDeath = function( ply ) end,
       OnSaberDeploy = function( wep ) wep.SaberDamage = wep.SaberDamage + 66 end,
}

wOS:RegisterSkillTree( TREE )