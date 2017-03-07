# This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
# Parameter.create(name: 'savory', savory: 5)
# Parameter.create(name: 'butter', savory: 5)
# Parameter.create(name: 'brown butter', savory: 5)
# Parameter.create(name: 'beer', savory: 5)
# Parameter.create(name: 'almond', savory: 5)
# Parameter.create(name: 'olive oil', savory: 5)
# Parameter.create(name: 'chestnut', savory: 5)
# Parameter.create(name: 'straw', savory: 5)
# Parameter.create(name: 'leather', savory: 5)
# Parameter.create(name: 'curry', savory: 5)
# Parameter.create(name: 'lanolin', savory: 5)
# Parameter.create(name: 'bread', savory: 5)
# Parameter.create(name: 'hazelnut', savory: 5)
# Parameter.create(name: 'walnut', savory: 5)
# Parameter.create(name: 'soy sauce', savory: 5)
# Parameter.create(name: 'miso', savory: 5)
# Parameter.create(name: 'yeast', savory: 5)
# Parameter.create(name: 'potato', savory: 5)
# Parameter.create(name: 'nutty', savory: 5)
# Parameter.create(name: 'tobacco', savory: 5)
# Parameter.create(name: 'peanut butter', savory: 5)

# Parameter.create(name: 'yogurt', sour: 5)
# Parameter.create(name: 'creme fraiche', sour: 5)
# Parameter.create(name: 'orange', sour: 5)
# Parameter.create(name: 'citrus', sour: 5)
# Parameter.create(name: 'wine', sour: 5)
# Parameter.create(name: 'sharp', sour: 5)
# Parameter.create(name: 'artichoke', sour: 5)
# Parameter.create(name: 'acidic', sour: 5)
# Parameter.create(name: 'sour', sour: 5)
# Parameter.create(name: 'lactic', sour: 5)

# Parameter.create(name: 'greens', bitter: 5)
# Parameter.create(name: 'mushrooms', bitter: 5)
# Parameter.create(name: 'moss', bitter: 5)
# Parameter.create(name: 'stony', bitter: 5)
# Parameter.create(name: 'grass', bitter: 5)
# Parameter.create(name: 'black pepper', bitter: 5)
# Parameter.create(name: 'chili', bitter: 5)
# Parameter.create(name: 'coffee', bitter: 5)
# Parameter.create(name: 'espresso', bitter: 5)
# Parameter.create(name: 'earth', bitter: 5)
# Parameter.create(name: 'mold', bitter: 5)
# Parameter.create(name: 'ammonia', bitter: 5)
# Parameter.create(name: 'bitter', bitter: 5, open: false)

# Parameter.create(name: 'metallic', salty: 5)
# Parameter.create(name: 'mineral', salty: 5)
# Parameter.create(name: 'garlic', salty: 5)
# Parameter.create(name: 'saline', salty: 5, open: false)

# Parameter.create(name: 'barnyard', funky: 5)
# Parameter.create(name: 'goaty', funky: 5)
# Parameter.create(name: 'sweat', funky: 5)
# Parameter.create(name: 'feet', funky: 5)
# Parameter.create(name: 'broth', funky: 5)
# Parameter.create(name: 'smoke', funky: 5)
# Parameter.create(name: 'manure', funky: 5)
# Parameter.create(name: 'butyric', funky: 5)
# Parameter.create(name: 'feline', funky: 5)
# Parameter.create(name: 'funky', funky: 5, open: false)
# Parameter.create(name: 'band-aid', funky: 5)

# Parameter.create(name: 'celery', sweet: 5)
# Parameter.create(name: 'onion', sweet: 5)
# Parameter.create(name: 'toffee', sweet: 5)
# Parameter.create(name: 'nutmeg', sweet: 5)
# Parameter.create(name: 'vanilla', sweet: 5)
# Parameter.create(name: 'chocolate', sweet: 5)
# Parameter.create(name: 'thistle', sweet: 5)
# Parameter.create(name: 'sweet', sweet: 5, open: false)
# Parameter.create(name: 'berry', sweet: 5)
# Parameter.create(name: 'apple', sweet: 5)
# Parameter.create(name: 'pear', sweet: 5)
# Parameter.create(name: 'stone fruit', sweet: 5)
# Parameter.create(name: 'melon', sweet: 5)
# Parameter.create(name: 'pineapple', sweet: 5)
# Parameter.create(name: 'mango', sweet: 5)
# Parameter.create(name: 'banana', sweet: 5)
# Parameter.create(name: 'cider', sweet: 5)
# Parameter.create(name: 'floal', sweet: 5)
# Parameter.create(name: 'honey', sweet: 5)
# Parameter.create(name: 'mint', sweet: 5)
# Parameter.create(name: 'fennel', sweet: 5)
# Parameter.create(name: 'rosemary', sweet: 5)

User.first.cheeses.create(name: 'Cabot Clothbound', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Moses Sleeper', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Bayley Hazen Blue', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Harbison', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Winnimere', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Pleasant Ridge Reserve', producer: 'Uplands Cheese')
User.first.cheeses.create(name: 'Rush Creek', producer: 'Uplands Cheese')
User.first.cheeses.create(name: "Montgomery\'s Cheddar", producer: 'Manor Farm')
User.first.cheeses.create(name: 'Stichelton', producer: 'Stichelton Dairy')
User.first.cheeses.create(name: "Fourme d\'Ambert", producer: 'Herve Mons')
User.first.cheeses.create(name: 'Ossau-Iraty', producer: 'Onetik')
User.first.cheeses.create(name: 'Alpha Tolman', producer: 'The Cellars at Jasper Hill')
User.first.cheeses.create(name: 'Majorero', producer: 'Fuerteventura')
User.first.cheeses.create(name: 'Red Rock', producer: 'Roelli Cheese Haus')
User.first.cheeses.create(name: 'Pantaleo', producer: 'Formaggio Caprino')
User.first.cheeses.create(name: 'Gorgonzola Piccante', producer: 'Luigi Guffanti')
User.first.cheeses.create(name: 'Sofia', producer: 'Capriole')
User.first.cheeses.create(name: 'Chabrin', producer: 'Onetik')
User.first.cheeses.create(name: 'Red Leicester', producer: 'Sparkenhoe Farm')
User.first.cheeses.create(name: 'Rogue River Blue', producer: 'Rogue Creamery')