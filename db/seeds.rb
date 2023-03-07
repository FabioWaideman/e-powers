# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

Product.destroy_all

file1 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678201533/chuck-norris-kick_dpzm55.jpg")
product1 = Product.new(title: "Chucknokenesis",
                       category: "kick",
                       description: "Summons Chuck Norris to round house kick the victim, causing death upon contact.",
                       price: 999)
product1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
product1.user = User.all.sample
product1.save!

file2 = URI.open("https://static.wikia.nocookie.net/hearthstone_gamepedia/images/d/d6/Healing_Hands_full.jpg/revision/latest/scale-to-width-down/400?cb=20190715153707")
product2 = Product.new(title: "Healing Hands",
                       category: "heal",
                       description: "With this ability, you can heal anyone who's afflicted with some sort of illness or wound. All you need to do is touch them and they'll instantly be healed.",
                       price: 719)
product2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
product2.user = User.all.sample
product2.save!

file3 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678207079/826a66aa26202822739c2cbb4dce1867_hdgukf.jpg")
product3 = Product.new(title: "Wings",
                       category: "flying",
                       description: "You will have angel-like wings attached to you. Your body structure will be different so you can fly. The wings will be attached to your shoulder blades.",
                       price: 659)
product3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
product3.user = User.all.sample
product3.save!

file4 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678207180/images_1_y913ss.jpg")
product4 = Product.new(title: "Fireball",
                       category: "fire",
                       description: "A bright streak flashes from your pointing finger to a point you choose within range then blossoms with a low roar into an explosion of flame.",
                       price: 765)
product4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
product4.user = User.all.sample
product4.save!

file5 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678207415/Grzegorz_Rutkowski_qbvyti.jpg")
product5 = Product.new(title: "Dragon Breathe",
                       category: "fire",
                       description: "Shoot jets of fire like a flame thrower from your mouth.",
                       price: 587)
product5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
product5.user = User.all.sample
product5.save!

file6 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678208175/ba8919de4f18d7e409d85e0ac0d468c5_ku6jlo.jpg")
product6 = Product.new(title: "Vibration Sense",
                       category: "sense",
                       description: "Psychically detect vibrations of any kind.",
                       price: 445)
product6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
product6.user = User.all.sample
product6.save!

file7 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678207615/iceball_x0t2wz.jpg")
product7 = Product.new(title: "Iceball",
                       category: "ice",
                       description: "A frigid globe of cold energy streaks from your fingertips to a point of your choice within range, where it explodes in a 60-foot-radius Sphere.",
                       price: 735)
product7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
product7.user = User.all.sample
product7.save!

file8 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678207851/LightningBolt_nkiayd.webp")
product8 = Product.new(title: "Lightning Bolt",
                       category: "electricity",
                       description: "You release a powerful stroke of electrical energy that deals electricity damage  to each creature within its area. The bolt begins at your fingertips.",
                       price: 621)
product8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
product8.user = User.all.sample
product8.save!

file9 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678208365/95516894-multiple-personality_nimvlu.webp")
product9 = Product.new(title: "Split Persona",
                       category: "body",
                       description: "Let out your light side and your dark side. The user to let out two sides of his/her personality, each with powers of their own.",
                       price: 524)
product9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
product9.user = User.all.sample
product9.save!

file10 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678208655/images_2_su09wu.jpg")
product10 = Product.new(title: "Time Extension",
                       category: "time and space",
                       description: "This ability grants the users the ability to isolate theirselves from the effects of time. In this way, you'll have more time to do whatever you want to do: more times for deadlines, sleep more, travel further etc.",
                       price: 414)
product10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
product10.user = User.all.sample
product10.save!

file11 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678208900/images_3_yrskld.jpg")
product11 = Product.new(title: "Teleportation",
                       category: "time and space",
                       description: "With this power, you can think of a place were you want to be, and poof there within a second.",
                       price: 964)
product11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
product11.user = User.all.sample
product11.save!

file12 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678209166/c25e9195faf73d056d67a7274c30f850--concepts-art_bftmwb.jpg")
product12 = Product.new(title: "Super Speed",
                       category: "time and space",
                       description: "This power does not merely confer quick movement, but also allows a character to perform tasks at a greatly reduced time rate.",
                       price: 324)
product12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
product12.user = User.all.sample
product12.save!

file13 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678209387/images_4_agez6n.jpg")
product13 = Product.new(title: "Telekinesis",
                       category: "psychic",
                       description: "The power to move, manipulate or otherwise interact with objects/matter without physical means.",
                       price: 756)
product13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
product13.user = User.all.sample
product13.save!

file14 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678209478/Enhanced_Strength_ojq6zk.webp")
product14 = Product.new(title: "Super Strength",
                       category: "body",
                       description: "Remarkable strength, above and beyond that of normal human strength.",
                       price: 785)
product14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
product14.user = User.all.sample
product14.save!

file15 = URI.open("https://res.cloudinary.com/db6x82hca/image/upload/v1678209900/41366871-beaming-reiki-healing-energy-male-parallel-hands-with-a-beam-of-bright-white-energy-outwards-on-a_t6uxth.webp")
product15 = Product.new(title: "Energy Beam",
                       category: "energy",
                       description: "Shoots a 5 square long beam directly in front of the caster, dealing energy damage.",
                       price: 357)
product15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
product15.user = User.all.sample
product15.save!

file16 = URI.open("https://thediplomat.com/wp-content/uploads/2013/12/sizes/td-story-s-2/thediplomat_2013-12-13_00-54-16.jpg")
product16 = Product.new(title: "Invisibility",
                       category: "body",
                       description: "Render oneself unable to be seen.",
                       price: 784)
product16.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
product16.user = User.all.sample
product16.save!

file17 = URI.open("https://i.pinimg.com/originals/86/fe/89/86fe8981b049d62502fed2db5f092ed7.jpg")
product17 = Product.new(title: "Jedi Pack",
                       category: "force",
                       description: "A pack of Jedi powers. Contains: Control, Sense and Alter",
                       price: 999)
product17.photo.attach(io: file17, filename: "nes.png", content_type: "image/png")
product17.user = User.all.sample
product17.save!

file18 = URI.open("https://media.moddb.com/images/groups/1/7/6367/swtor-empire-set-by-morie-torwars-343693.jpg")
product18 = Product.new(title: "Sith Pack",
                       category: "darkforce",
                       description: "A pack of Sith powers. Contains: Offense, Body, Mind and Sith magic",
                       price: 999)
product18.photo.attach(io: file18, filename: "nes.png", content_type: "image/png")
product18.user = User.all.sample
product18.save!

file19 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEpQ0OecSmoHFnNCBgy1aFTSGvIfbe7FhJhg&usqp=CAU")
product19 = Product.new(title: "Shapeshift",
                       category: "body",
                       description: "Gain the ability to change your physical form at will.",
                       price: 328)
product19.photo.attach(io: file19, filename: "nes.png", content_type: "image/png")
product19.user = User.all.sample
product19.save!

file20 = URI.open("https://i.pinimg.com/originals/20/2e/10/202e10ab1f5b968aa954a4db6ed3c793.png")
product20 = Product.new(title: "Mnemonic Power Absorption",
                       category: "mind",
                       description: "Absorb the powers of others through memories and/or psychometrics.",
                       price: 688)
product20.photo.attach(io: file20, filename: "nes.png", content_type: "image/png")
product20.user = User.all.sample
product20.save!

file21 = URI.open("https://www.snexplores.org/wp-content/uploads/2019/11/860_main_weather_control.png")
product21 = Product.new(title: "Weather Manipulation",
                       category: "elemental",
                       description: "User can create, shape and manipulate all forms of weather including artificial, natural, supernatural, divine, demonic, esoteric, cosmic, empathic, metaphysical, conceptual, etc., having no limits on the amount or type of weather they can control/manipulate.",
                       price: 954)
product21.photo.attach(io: file21, filename: "nes.png", content_type: "image/png")
product21.user = User.all.sample
product21.save!

file22 = URI.open("https://static.wikia.nocookie.net/powerlisting/images/2/26/Brahman.jpg/revision/latest/scale-to-width-down/516?cb=20190522200509")
product22 = Product.new(title: "Absolute Transcendence",
                       category: "transcendence",
                       description: "The user transcends absolutely anything and everything. This includes all dimensions, life/death, beginning/ending, concepts/ideas/principles, creation/destruction, boundaries, context, potential, possibilities/variables, levels of reality, existence/nonexistence, perfection/levels of perfection, embodiments, their personal status, being/non-being, etc.",
                       price: 658)
product22.photo.attach(io: file22, filename: "nes.png", content_type: "image/png")
product22.user = User.all.sample
product22.save!

file23 = URI.open("https://images7.alphacoders.com/801/801473.jpg")
product23 = Product.new(title: "Talk to Animals",
                       category: "social",
                       description: "The user is able to understand the speech or emotions of animal life forms.",
                       price: 897)
product23.photo.attach(io: file23, filename: "nes.png", content_type: "image/png")
product23.user = User.all.sample
product23.save!

file24 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEVEaz3ibSGyT5zf-VyHVJnZaawgr0JQ668g&usqp=CAU")
product24 = Product.new(title: "Berserker   ",
                       category: "body",
                       description: "Can empty oneself of all rational restraints in battle and completely immerse oneself in combat becoming a dangerous warrior for both friend and foe.",
                       price: 892)
product24.photo.attach(io: file24, filename: "nes.png", content_type: "image/png")
product24.user = User.all.sample
product24.save!
