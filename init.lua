-- all functions below are optional and can be left out

--[[

function OnModPreInit()
	print("Mod - OnModPreInit()") -- First this is called for all mods
end

function OnModInit()
	print("Mod - OnModInit()") -- After that this is called for all mods
end

function OnModPostInit()
	print("Mod - OnModPostInit()") -- Then this is called for all mods
end

function OnPlayerSpawned( player_entity ) -- This runs when player entity has been created
	GamePrint( "OnPlayerSpawned() - Player entity id: " .. tostring(player_entity) )
end

function OnWorldInitialized() -- This is called once the game world is initialized. Doesn't ensure any world chunks actually exist. Use OnPlayerSpawned to ensure the chunks around player have been loaded or created.
	GamePrint( "OnWorldInitialized() " .. tostring(GameGetFrameNum()) )
end



function OnWorldPostUpdate() -- This is called every time the game has finished updating the world
	GamePrint( "Post-update hook " .. tostring(GameGetFrameNum()) )
end

]]--
local filenames = {
	[1] = '_test_walk.xml',
    [2] = 'acidshooter.xml',
    [3] = 'acidshooter_weak.xml',
    [4] = 'alchemist.xml',
    [5] = 'ant.xml',
    [6] = 'assassin.xml',
    [7] = 'barfer.xml',
    [8] = 'basebot_hidden.xml',
    [9] = 'basebot_neutralizer.xml',
    [10] = 'basebot_sentry.xml',
    [11] = 'basebot_soldier.xml',
    [12] = 'bat.xml',
    [13] = 'bigbat.xml',
    [14] = 'bigfirebug.xml',
    [15] = 'bigzombie.xml',
    [16] = 'bigzombiehead.xml',
    [17] = 'bigzombietorso.xml',
    [18] = 'blob.xml',
    [19] = 'bloodcrystal_physics.xml',
    [20] = 'bloom.xml',
    [21] = 'boss_dragon.xml',
    [22] = 'chest_leggy.xml',
    [23] = 'chest_mimic.xml',
    [24] = 'coward.xml',
    [25] = 'crystal_physics.xml',
    [26] = 'darkghost.xml',
    [27] = 'deer.xml',
    [28] = 'drone.xml',
    [29] = 'drone_lasership.xml',
    [30] = 'drone_physics.xml',
    [31] = 'drone_shield.xml',
    [32] = 'duck.xml',
    [33] = 'eel.xml',
    [34] = 'elk.xml',
    [35] = 'enlightened_alchemist.xml',
    [36] = 'ethereal_being.xml',
    [37] = 'failed_alchemist.xml',
    [38] = 'failed_alchemist_b.xml',
    [39] = 'firebug.xml',
    [40] = 'firemage.xml',
    [41] = 'firemage_weak.xml',
    [42] = 'fireskull.xml',
    [43] = 'fireskull_weak.xml',
    [44] = 'fish.xml',
    [45] = 'fish_large.xml',
    [46] = 'flamer.xml',
    [47] = 'fly.xml',
    [48] = 'friend.xml',
    [49] = 'frog.xml',
    [50] = 'frog_big.xml',
    [51] = 'fungus.xml',
    [52] = 'fungus_big.xml',
    [53] = 'fungus_giga.xml',
    [54] = 'fungus_tiny.xml',
    [55] = 'gazer.xml',
    [56] = 'ghost.xml',
    [57] = 'ghoul.xml',
    [58] = 'giant.xml',
    [59] = 'giantshooter.xml',
    [60] = 'giantshooter_weak.xml',
    [61] = 'goblin_bomb.xml',
    [62] = 'healerdrone_physics.xml',
    [63] = 'icemage.xml',
    [64] = 'icer.xml',
    [65] = 'iceskull.xml',
    [66] = 'lasershooter.xml',
    [67] = 'longleg.xml',
    [68] = 'lurker.xml',
    [69] = 'maggot.xml',
    [70] = 'mimic_physics.xml',
    [71] = 'miner.xml',
    [72] = 'miner_chef.xml',
    [73] = 'miner_fire.xml',
    [74] = 'miner_santa.xml',
    [75] = 'miner_weak.xml',
    [76] = 'miniblob.xml',
    [77] = 'missilecrab.xml',
    [78] = 'monk.xml',
    [79] = 'necrobot.xml',
    [80] = 'necrobot_super.xml',
    [81] = 'necromancer.xml',
    [82] = 'necromancer_shop.xml',
    [83] = 'necromancer_super.xml',
    [84] = 'pebble_physics.xml',
    [85] = 'phantom_a.xml',
    [86] = 'phantom_b.xml',
    [87] = 'playerghost.xml',
    [88] = 'rat.xml',
    [89] = 'roboguard.xml',
    [90] = 'roboguard_big.xml',
    [91] = 'scavenger_clusterbomb.xml',
    [92] = 'scavenger_glue.xml',
    [93] = 'scavenger_grenade.xml',
    [94] = 'scavenger_heal.xml',
    [95] = 'scavenger_invis.xml',
    [96] = 'scavenger_leader.xml',
    [97] = 'scavenger_mine.xml',
    [98] = 'scavenger_poison.xml',
    [99] = 'scavenger_shield.xml',
    [100] = 'scavenger_smg.xml',
    [101] = 'scorpion.xml',
    [102] = 'shaman.xml',
    [103] = 'sheep.xml',
    [104] = 'sheep_bat.xml',
    [105] = 'sheep_fly.xml',
    [106] = 'shooterflower.xml',
    [107] = 'shotgunner.xml',
    [108] = 'shotgunner_weak.xml',
    [109] = 'skullfly.xml',
    [110] = 'skullrat.xml',
    [111] = 'skycrystal_physics.xml',
    [112] = 'skygazer.xml',
    [113] = 'slimeshooter.xml',
    [114] = 'slimeshooter_nontoxic.xml',
    [115] = 'slimeshooter_weak.xml',
    [116] = 'sniper.xml',
    [117] = 'spearbot.xml',
    [118] = 'spitmonster.xml',
    [119] = 'statue.xml',
    [120] = 'statue_physics.xml',
    [121] = 'tank.xml',
    [122] = 'tank_rocket.xml',
    [123] = 'tank_super.xml',
    [124] = 'tentacler.xml',
    [125] = 'tentacler_small.xml',
    [126] = 'thundermage.xml',
    [127] = 'thundermage_big.xml',
    [128] = 'thunderskull.xml',
    [129] = 'turret_left.xml',
    [130] = 'turret_right.xml',
    [131] = 'ultimate_killer.xml',
    [132] = 'wand_ghost.xml',
    [133] = 'wand_ghost_charmed.xml',
    [134] = 'wand_ghost_with_sampo.xml',
    [135] = 'wizard_dark.xml',
    [136] = 'wizard_hearty.xml',
    [137] = 'wizard_homing.xml',
    [138] = 'wizard_neutral.xml',
    [139] = 'wizard_poly.xml',
    [140] = 'wizard_returner.xml',
    [141] = 'wizard_swapper.xml',
    [142] = 'wizard_tele.xml',
    [143] = 'wizard_twitchy.xml',
    [144] = 'wizard_weaken.xml',
    [145] = 'wolf.xml',
    [146] = 'worm.xml',
    [147] = 'worm_big.xml',
    [148] = 'worm_end.xml',
    [149] = 'worm_skull.xml',
    [150] = 'worm_tiny.xml',
    [151] = 'wraith.xml',
    [152] = 'wraith_glowing.xml',
    [153] = 'wraith_storm.xml',
    [154] = 'zombie.xml',
    [155] = 'zombie_weak.xml',
}
local nxml = dofile("mods/roomy_world/files/scripts/nxml.lua")
for k, dir in ipairs(filenames) do
	local filepath = "data/entities/animals/" .. dir
	local content = ModTextFileGetContent(filepath)
	local xml = nxml.parse(content)
	local base = xml:first_of("Base")
	if base then
		local animals = base:first_of("AnimalAIComponent")
		local ghost = base:first_of("GhostComponent")
		local worm = base:first_of("WormAIComponent")
		if animals then
			animals:set_attr("creature_detection_range_x", 2000)
			animals:set_attr("creature_detection_range_y", 2000)
			animals:set_attr("creature_detection_angular_range_deg", 90)
			animals:set_attr("creature_detection_check_every_x_frames", 30)
			animals:set_attr("pathfinding_max_depth_no_target", 150)
			animals:set_attr("pathfinding_max_depth_has_target", 200)
			animals:set_attr("sense_creatures_through_walls", true)
		elseif ghost then
			ghost:set_attr("hunt_box_radius", 2000)
			ghost:set_attr("new_hunt_target_check_every", 30)
		elseif worm then
			worm:set_attr("hunt_box_radius", 2000)
			worm:set_attr("give_up_time_frames", 1800)
		end
	end
	ModTextFileSetContent(filepath, tostring(xml))
end