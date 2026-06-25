return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
-- ═══════════════════════════════════════════════════════════════════
--  STL RP — ox_inventory custom items
--  This block is appended to ox_inventory/data/items.lua by patch-items.bat
-- ═══════════════════════════════════════════════════════════════════

    -- ── Phones ──────────────────────────────────────────────────────
    ['phone'] = {
        label       = 'Phone',
        weight      = 500,
        stack       = false,
        close       = true,
        description = 'A smartphone.',
    },
    ['burner_phone'] = {
        label       = 'Burner Phone',
        weight      = 300,
        stack       = false,
        close       = true,
        description = 'Untraceable. Use it and lose it.',
    },

    -- ── Drug raw materials ──────────────────────────────────────────
    ['stl_seeds'] = {
        label       = 'Seeds',
        weight      = 100,
        stack       = true,
        close       = true,
        description = 'Plant them somewhere safe.',
    },
    ['stl_powder_raw'] = {
        label       = 'Raw Powder',
        weight      = 200,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_baking_soda'] = {
        label       = 'Baking Soda',
        weight      = 50,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_codeine'] = {
        label       = 'Codeine Bottle',
        weight      = 300,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_boy_raw'] = {
        label       = 'Raw Tar',
        weight      = 200,
        stack       = true,
        close       = true,
        description = nil,
    },

    -- ── Finished drugs ──────────────────────────────────────────────
    ['stl_loud'] = {
        label       = 'Loud',
        weight      = 30,
        stack       = true,
        close       = true,
        description = 'Gas. Straight fire.',
    },
    ['stl_crack'] = {
        label       = 'Soft',
        weight      = 20,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_blues'] = {
        label       = 'Blues',
        weight      = 5,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_lean'] = {
        label       = 'Wock',
        weight      = 200,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['stl_boy'] = {
        label       = 'Boy',
        weight      = 10,
        stack       = true,
        close       = true,
        description = nil,
    },

    -- ── Tools ───────────────────────────────────────────────────────
    ['slim_jim'] = {
        label       = 'Slim Jim',
        weight      = 200,
        stack       = true,
        close       = true,
        description = 'For getting into locked cars.',
    },
    ['lockpick'] = {
        label       = 'Lockpick',
        weight      = 100,
        stack       = true,
        close       = true,
        description = nil,
    },

    -- ── Job items ───────────────────────────────────────────────────
    ['trap_package'] = {
        label       = 'Package',
        weight      = 500,
        stack       = false,
        close       = true,
        description = 'Don\'t open it. Just deliver it.',
    },
    ['fake_ticket'] = {
        label       = 'Fake Ticket',
        weight      = 50,
        stack       = true,
        close       = true,
        description = 'Convincing forgery.',
    },

    -- ── General consumables / loot ──────────────────────────────────
    ['first_aid_kit'] = {
        label       = 'First Aid Kit',
        weight      = 500,
        stack       = true,
        close       = true,
        description = 'Basic medical supplies.',
    },
    ['sandwich'] = {
        label       = 'Sandwich',
        weight      = 100,
        stack       = true,
        close       = true,
        description = 'From the corner store.',
    },
    ['weed_joint'] = {
        label       = 'Joint',
        weight      = 20,
        stack       = true,
        close       = true,
        description = nil,
    },
    ['radio'] = {
        label       = 'Radio',
        weight      = 300,
        stack       = false,
        close       = false,
        description = 'Frequency comms.',
    },
    ['pistol_ammo'] = {
        label       = 'Pistol Ammo',
        weight      = 50,
        stack       = true,
        close       = true,
        description = nil,
    },

}