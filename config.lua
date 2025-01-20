Config                        = {}

Config.DrawDistance           = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType             = { Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34 }
Config.MarkerSize             = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor            = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement = true       -- Enable if you want society managing.
Config.EnableArmoryManagement = false
Config.EnableESXIdentity      = true       -- Enable if you're using esx_identity.
Config.EnableESXOptionalneeds = false      -- Enable if you're using esx_optionalneeds
Config.EnableLicenses         = false      -- Enable if you're using esx_license.

Config.EnableHandcuffTimer    = true       -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer          = 10 * 60000 -- 10 minutes.

Config.EnableCustomPeds       = false      -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService       = false      -- Enable esx service?
Config.MaxInService           = -1         -- How many people can be in service at once? Set as -1 to have no limit

Config.EnableFinePresets      = false      -- Set to false to use a custom input fields for fines

Config.Locale                 = GetConvar('esx:locale', 'en')

Config.OxInventory            = ESX.GetConfig().OxInventory

Config.PoliceStations         = {

	Mission_Row = {
		Job = 'police',
		Blip = { enable = true, title = '', Coords = vector3(425.1, -979.5, 30.7), Sprite = 60, Display = 4, Scale = 1.2, Colour = 29 },
		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			weapons = {
				[1] = { name = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 1000, min_rank = 0 },
				[2] = { name = 'WEAPON_NIGHTSTICK', price = 1000, min_rank = 0 },
				[3] = { name = 'WEAPON_STUNGUN', price = 1000, min_rank = 0 },
				[4] = { name = 'WEAPON_FLASHLIGHT', price = 1000, min_rank = 0 },
				[5] = { name = 'WEAPON_ADVANCEDRIFLE', price = 1000, min_rank = 1 },
				[6] = { name = 'WEAPON_PUMPSHOTGUN', price = 1000, min_rank = 2 }
			},
			coords = {
				[1] = vector3(451.7, -980.1, 30.6),
			}
		},

		Garages = {
			[1] = {
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				Vehicles = {
					[1] = { label = 'police3', name = 'police3', livery = 0, min_rank = 1 },
					[2] = { label = 'policet', name = 'policet', livery = 1, min_rank = 2 },
					[3] = { label = 'policeb', name = 'policeb', livery = 2, min_rank = 2 },
				},
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			}
		},

		BossActions = {
			canwash = true,
			coords = vector3(452.6, -992.8, 30.6)
		}
	}
}


Config.CustomPeds = {
	police = { --job name
		[1] = {
			ranks = { 0, 1, 2, 3, 4 },
			label = TranslateCap('s_m_y_sheriff_01'),
			maleModel = 's_m_y_sheriff_01',
			femaleModel = 's_f_y_sheriff_01'
		}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms   = {
	police = {              --job name
		[1] = {             --outfit number
			label = 'Rank 0 Outfit', --outfitlabel for menu
			ranks = { 0, 1, 2, 3 }, --ranks that can use this outfit table/number
			male = {
				tshirt_1 = 59,
				tshirt_2 = 1,
				torso_1 = 55,
				torso_2 = 0,
				decals_1 = 0,
				decals_2 = 0,
				arms = 41,
				pants_1 = 25,
				pants_2 = 0,
				shoes_1 = 25,
				shoes_2 = 0,
				helmet_1 = 46,
				helmet_2 = 0,
				chain_1 = 0,
				chain_2 = 0,
				ears_1 = 2,
				ears_2 = 0
			},
			female = {
				tshirt_1 = 36,
				tshirt_2 = 1,
				torso_1 = 48,
				torso_2 = 0,
				decals_1 = 0,
				decals_2 = 0,
				arms = 44,
				pants_1 = 34,
				pants_2 = 0,
				shoes_1 = 27,
				shoes_2 = 0,
				helmet_1 = 45,
				helmet_2 = 0,
				chain_1 = 0,
				chain_2 = 0,
				ears_1 = 2,
				ears_2 = 0
			}
		},

		[2] = {
			label = 'Bullet Wear', --outfitlabel for menu
			ranks = { 0, 1, 2, 3 }, --ranks that can use this outfit table/number
			armor = true,  -- to make sure this is armor to increase ped armor
			male = {
				bproof_1 = 11, bproof_2 = 1
			},
			female = {
				bproof_1 = 13, bproof_2 = 1
			},

		},

		[3] = {
			label = 'Gilet Wear',
			ranks = { 0, 1, 2, 3, 4 },
			male = {
				tshirt_1 = 59, tshirt_2 = 1
			},
			female = {
				tshirt_1 = 36, tshirt_2 = 1
			}
		},
	}

}
