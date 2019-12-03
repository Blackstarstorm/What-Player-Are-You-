# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
##Got definition and facts from techopedia.com, livewire.com
## All respected logos are with their repested companies

User.create!([
  {
  username: "BigJohn97",
  password: "1234"
}
])

GameGenre.create!([
  {
  genre:"Role-Playing-Game (RPG)",
  description: "A game in which players assume the roles of characters in a fictional setting. Players take responsibility for acting out these roles within a narrative, either through literal acting, or through a process of structured decision-making regarding character development. Actions taken within many games succeed or fail according to a formal system of rules and guidelines.",

  facts: ["One of the first RPGs wasn't even a video game. It was based on the table top game Dungeons&Dragons(D&D).",

  "Single-player RPG franchises for home video consoles include Square Enix’s Dragon Quest (1986– ) and Final Fantasy (1987– ), for Nintendo and Sony consoles. Nintendo’s Pokémon (1995– ) series is the most successful RPG franchise in terms of total media sales." ,

  "Most RPG games with have the player invents time to grind(leveling up), do side quest and do there best to complete the objectives give"],

  game: ["Final Fantasy", "Dark Souls", "Skyrim"],

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575306511/394bbeae8a82e614b28c216bd36facb8_qm05am.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575306902/capsule_616x353_qjtuq5.jpg", 
  
  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575307311/0d4fe667aae6754dcf7afbaa6a2849267eebc2e1_fpzwbh.jpg"]

},
{
  genre: "Fighting",
  description: "A fighting game is a genre of video game in which a gamer battles against another character controlled by another gamer or the game's artificial intelligence (AI). Fighting games often feature special moves that are triggered through rapid sequences of button presses or associated mouse or joystick movements.",

  facts: ["The first fighting game, Heavyweight Champ, was designed in 1976.",

  "Fighting game competition have been going strong, even hosting Evolution Championship Series (Evo for short).",

  "Some fighting games even break the norm of one-on-one(1v1) fights, with two-on-two(2v2), three-on-three(3v3) and party game style(i.e super smash bros.)"],

  game: ["Street Fighter", "Fatal Fury", "Super Smash Bros.", "Soulcalibur"],

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312279/4d2780c1bf417187193df59786f2f4ff_grdqtf.jpg",
  
  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312614/2000_cvtgpz.png", 

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312534/super-smash-brothers-nintendo-switch01-logo_zpdx0b.jpg", 

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312770/bb0b74c367af090e22fd60dbb85f999e_puasbo.png"]
},
{
  genre: "Platformer",
  description: "A platformer is a video game in which the game-play revolves heavily around players controlling a character who runs and jumps onto platforms, floors, ledges, stairs or other objects depicted on a single or scrolling (horizontal or vertical) game screen.",

  facts: ["Many game historians and fans consider the 1980 release of Space Panic to be the first true platform game while others consider then 1981 release of Nintendo's Donkey Kong to be the first.,",

  "Platform games are well know for having speed-runs(records of how fast you can finish the game) of games even holding competitions."],

  game: ["Super Mario", "Castlevina", "Sonic", "Megaman", "Metriod"],

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575314978/Super_Mario_Bros._Logo_k0ol4j.svg",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575315085/latest_tlkj9j.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575315336/SonicSeriesLogo_jwzmdu.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575321205/804db7f23241664d01fdbeaa05f8c28a_apwz55.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575319498/H2x1_CharacterHub_Metroid_image1600w_rbvblu.jpg"]
},
{
  genre: "Rhythum",
  description: "Rhythm game or rhythm action is a genre of music-themed video game that challenges a player's sense of rhythm. Games in the genre typically focus on dance or the simulated performance of musical instruments, and require players to press buttons in a sequence dictated on the screen",

  facts: ["Rhytum games tend to given least representaion comparted to most game genre.Some people tend to use rhythum games to just de-stress."],

  game: ["Gituar Hero", "Dance Dance Revolution", "Just Shapes and Beats"],

  img_url:["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575315977/Guitar-Hero-Logo_ufjuis.jpg", 

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575316047/53294_libjmn.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575316134/H2x1_NSwitchDS_JustShapesAndBeats_image1600w_djgy1r.jpg"]
},
{
  genre: "Action-Adventure",
  description:"An action-adventure game can be defined as a game with a mix of elements from an action game and an adventure game, especially crucial elements like puzzles. Action-adventures require many of the same physical skills as action games, but also offer a storyline, numerous characters, an inventory system, dialogue, and other features of adventure games. They are faster-paced than pure adventure games, because they include both physical and conceptual challenges. Action-adventure games normally include a combination of complex story elements, which are displayed for players using audio and video. The story is heavily reliant upon the player character's movement, which triggers story events and thus affects the flow of the game.",

  facts: ["Action-Adventure have been were usually just action & adventure games, but most gamers tend to seem them as one in the same.", 

  "Most people say that Action-Adventure came around the early 2000s"],

  game: ["God of War", "Shadow of Colossus", "Tomb Raider"],

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575320918/god-of-war-png-god-of-war-png-1439_vawiqh.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575321009/210-2107518_playstation-shadow-of-colossus-logo_cjnjap.jpg",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575321079/5852c19358215f0354495f4e_hislte.png"]
},
{
  genre: "Shooter",
  description: "The purpose of a shooter game is to shoot opponents and proceed through missions without the player character being killed or dying as a result of the player's actions. A shooting game is a genre of video game where the focus is almost entirely on the defeat of the character's enemies using the weapons given to the player.",

  facts: ["Some common sub-genres for Shooters are First-Person-Shooter(FPS), Third-Person-Shooter(TPS) and Top-Down Shooter games.",

  "The first-person shooter genre has been traced as far back as Maze War, development of which began in 1973, and 1974's Spasim."],

  game: ["Halo", "OverWatch", "Destiny"],

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575322764/halo_miavxa.svg",

  "https://1000logos.net/wp-content/uploads/2018/01/overwatch-logo.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575323567/Destiny-Logo_iqw5mq.png"]
}, 
{
  genre: "Puzzles",
  description: "The genre is very broad, but it generally involves some level of abstraction and may make use of colors, shapes, numbers, physics, or complex rules. Unlike many video games, puzzle video games often do make use of lives that challenge a player by limiting the number of tries. In puzzle video games, players often try for a high score or to progress to the next level by getting to a certain place or achieving some criteria.",

  facts: ["The types of puzzles can test many problem-solving skills including logic, pattern recognition, sequence solving, and word completion.",

  "The player may have unlimited time or infinite attempts to solve a puzzle, or there may be a time limit, or simpler puzzles may be made difficult by having to complete them in real time, as in Tetris."],

  game: ["Tetris", "Portal", "Professor Layton"], 

  img_url: ["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324437/250_ewooqt.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324550/Portal_logo_ucg6pt.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324677/8be_jpaer4.png"]
},
{
  genre:"Racing",
  description: "The racing video game genre is the genre of video games, either in the first-person or third-person perspective, in which the player partakes in a racing competition with any type of land, water, air or space vehicles. They may be based on anything from real-world racing leagues to entirely fantastical settings. In general, they can be distributed along a spectrum anywhere between hardcore simulations, and simpler arcade racing games.",

  facts: ["The first racing game came out in 1973, called 'Space Race' for Atari"],

  game:["Mario Kart", "Gran Turismo", "Midnight Club"],

  img_url:["https://res.cloudinary.com/dvysqqdqe/image/upload/v1575325909/2000_n6kavk.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575326131/Gran_Turismo_logo_ruvcfd.png",

  "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575326622/c9130ac47eded6391761630e87207604_srymw6.jpg"]
}
])

Game.create!([
  {
    name: "Final Fanstay 7",
    description: "",
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575333863/capsule_616x353_eubtpj.jpg",
    genre_id:1
  }
])