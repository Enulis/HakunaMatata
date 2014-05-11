# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([""{ name: 'Chicago' }, { name: 'Copenhagen' }""])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [["Tiffany",	"Huff",			"lurenenupu-7492@yopmail.com",		"cramililed"],
		 ["Mathew",		"Chavez",		"essennakinn-4718@yopmail.com",		"6KVyTi2aWo"],
		 ["Jorge",		"Glover",		"ettaqolle-9094@yopmail.com",		"aRFFbvcw5C"],
		 ["Rosalie",	"Arnold",		"ryppowemmu-7589@yopmail.com",		"judrukofri"],
		 ["Alice",		"Young",		"sigorruttamo-5233@yopmail.com",	"KvCJy5z8yT"],

		 ["Bradley",	"Reese",		"bacifamme-0245@yopmail.com",		"KvCJy5z8yT"],
		 ["Sheldon",	"Brady",		"wenummyffyrr-5161@yopmail.com",	"breuesabed"],
		 ["Gerald",		"Wagner",		"pattypafidy-7405@yopmail.com",		"spethovosa"],
		 ["Geneva",		"Mccormick",	"ynnaleni-9971@yopmail.com",		"nEEH2sF7SM"],
		 ["Kristopher",	"Elliott",		"umywiqyffu-7939@yopmail.com",		"clafraclis"],

		 ["Jamie",		"Baldwin",		"mandcbridges@comcast.net",			"freluracug"],
		 ["Roland",		"Padilla",		"eric.jeanmaire@gmail.com",			"4wi0Sj3Cdv"],
		 ["Vivian",		"Salazar",		"jeff.kirkwood@yahoo.com",			"387KnqXfWb"],
		 ["Jack",		"Cunningham",	"BLOOD_STORM_1@HOTMAIL.COM",		"pimanuwuch"],
		 ["Gary",		"Gibbs",		"joogla@hotmail.com",				"mKB2bDKtAJ"],

		 ["Jody",		"Delgado",		"Scott@bhme.net",					"ligastuthi"],
		 ["Marin",		"Pogancic",		"enulis@gmail.com",					"123456"	],
		 ["Filip",		"Rudan",		"dfusion1234@gmail.com",			"hunter2"	],
		 ["Luka",		"Matetic",		"lukam4024@gmail.com",				"password"	],
		 ["Ivan",		"Grgurina",		"ivan.grgurina@fer.hr",				"password2"	]];



users.each do |name, surname, email, password|
	salt = BCrypt::Engine.generate_salt
	hash = BCrypt::Engine.hash_secret(password, salt)
	User.create(name: name, surname: surname, email: email, hashed_passwords: hash, salt: salt); 
end