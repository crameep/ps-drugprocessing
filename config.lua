Config = {}

Config.Delays = {
	WeedProcessing = 1000 * 5,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 5,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}
Config.Debug = {
	poly = true,
}

Config.CircleZones = {
	WeedField = {coords = vector3(5464.62,-5901.59, 20.01), name = ('Weed Farm'), radius = 10.0},
	WeedProcessing = {coords = vector3(4947.78, -5100.81,2.24), name = ('Weed Process'), polyHeight = 2.5, polyWidth = 2.5},
	
	MethProcessing = {coords = vector3(978.17, -147.98, -48.53), name = ('Meth Process'), radius = 20.0},
	MethTemp = {coords = vector3(982.56, -145.59, -49.0), name = ('Meth Temperature'), radius = 20.0},
	MethBag = {coords = vector3(987.81, -140.43, -49.0), name = ('Meth Bagging'), radius = 20.0},
	HydrochloricAcidFarm = {coords = vector3(5187.34, -5133.3, 3.34), name = ('Hydrochloric Acid'), radius = 4.0},

	SulfuricAcidFarm = {coords = vector3(5052.58, -4592.65, 2.89), name = ('Sulfuric Acid'), radius = 3.0},
	SodiumHydroxideFarm = {coords = vector3(4919.47, -5237.47, 2.52), name = ('Sodium Hydroxide'), radius = 5.0},
	
	ChemicalsField = {coords = vector3(4857.25, -5340.75, 13.23), name = ('Chemicals'), radius = 5.0},
	ChemicalsConvertionMenu = {coords = vector3(3536.71, 3662.63, 28.12), name = ('Chemicals Process'), radius = 100.0},

	CokeField = {coords = vector3(5227.66, -5601.06, 47.81), name = ('Coke'), radius = 10.0},
	CokeProcessing = {coords = vector3(4992.77, -5126.12, -4.64), name = ('Coke Process'), polyHeight = 1.2, polyWidth = 1.2}, 
	CokePowder = {coords = vector3(4993.19, -5132.19, -4.67), name = ('Powder Cutting'), polyHeight = 1.2, polyWidth = 1.2},--vector3(1092.9, -3196.65, -38.99)
	CokeBrick = {coords = vector3(4993.57, -5137.46, -4.67), name = ('Brick Up Packages'), polyHeight = 1.2, polyWidth = 1.2},--vector3(1099.57, -3194.35, -38.99)
	
	HeroinField = {coords = vector3(vector3(5243.91, -5760.9, 21.21)), name = ('Heroin'), radius = 10.0},
	HeroinProcessing = {coords = vector3(1413.37, -2041.74, 52.0), name = ('Heroin Process'), radius = 100.0},

	lsdProcessing = {coords = vector3(2503.84, -428.11, 92.99), name = ('LSD process'), radius = 100.0},

	thionylchlorideProcessing = {coords = vector3(-679.59, 5800.46, 17.33), name = ('Thi Clo Process'), radius = 100.0},
}

Config.WeedBags = { -- 
  "banana_kush_bag",
  "blue_dream_bag",
  "og_kush_bag",
  "purple_haze_bag",
}


Config.MethLab = {
	["enter"] = {
        coords = vector4(-1187.17, -446.24, 43.91, 306.59),
    },
    ["exit"] = {
        coords = vector4(969.57, -147.07, -46.4, 267.52),  --vector3(969.57, -147.07, -46.4)
    },
}

Config.CokeLab = {
	["enter"] = {
        coords = vector4(813.21, -2398.69, 23.66, 171.51), --vector3(813.21, -2398.69, 23.66)
    },
    ["exit"] = {
        coords = vector4(1088.68, -3187.68, -38.99, 176.04), -- GTA DLC Biker Cocaine Lab -- vector3(1088.68, -3187.68, -38.99)
    },
}

--[[Config.WeedLab = {
	["enter"] = {
        coords = vector4(813.21, -2398.69, 23.66, 171.51), --vector3(813.21, -2398.69, 23.66)
    },
    ["exit"] = {
        coords = vector4(1088.68, -3187.68, -38.99, 176.04), -- GTA DLC Biker Cocaine Lab -- vector3(1088.68, -3187.68, -38.99)
    },
} ]]--


--------------------------------
-- DRUG CONFIG AMOUNTS --
--------------------------------

--------------------------------
-- COKE PROCESSING AMOUNTS --
--------------------------------

Config.CokeProcessing = {
	CokeLeaf = 1, -- Amount of Leaf Needed to Process
	ProcessCokeLeaf = math.random(2,7), -- Amount of Coke Received
	-- Processing Small Bricks --
	Coke = 10, -- Amount of Coke Needed for Small Brick
	BakingSoda = 5, -- Amount of Baking Soda Needed for Small Brick
	SmallCokeBrick = math.random(2,7),
	-- Process Small Bricks Into Large Brick --
	SmallBrick = 4, -- Amount of Small Bricks Required
	LargeBrick = 1, -- Large Bricks Received
}

--------------------------------
-- METH PROCESSING AMOUNTS --
--------------------------------
Config.MethProcessing = {
	-- Chemical Processing --
	SulfAcid = 1, -- Amount of Sulfuric Acid Needed for Liquid Mix
	HydAcid = 1, -- Amount of Hydrochloric Acid Needed for Liquid Mix
	SodHyd = 1, -- Amount of Sodium Hydroxide Needed for Liquid Mix
	Meth = math.random(5,12), -- Amount of Meth Recevied From 1 Tray
}

--------------------------------
-- HEROIN PROCESSING AMOUNTS --
--------------------------------
Config.HeroinProcessing = {
	Poppy = 2 -- Amount of Poppy Required for 1 Heroin
}