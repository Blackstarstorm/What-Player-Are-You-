# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Definition and facts from techopedia.com, livewire.com and wikipedia searches
## All respected logos are with their repested companies

User.create!([
  {
  username: "BigJohn97",
  password: "1234"
}
])

genres = GameGenre.create!([
  {
  genre:"Role-Playing-Game (RPG)",
  description: "A game in which players assume the roles of characters in a fictional setting. Players take responsibility for acting out these roles within a narrative, either through literal acting, or through a process of structured decision-making regarding character development. Actions taken within many games succeed or fail according to a formal system of rules and guidelines."
},
{
  genre: "Fighting",
  description: "A fighting game is a genre of video game in which a gamer battles against another character controlled by another gamer or the game's artificial intelligence (AI). Fighting games often feature special moves that are triggered through rapid sequences of button presses or associated mouse or joystick movements."
},
{
  genre: "Platformer",
  description: "A platformer is a video game in which the game-play revolves heavily around players controlling a character who runs and jumps onto platforms, floors, ledges, stairs or other objects depicted on a single or scrolling (horizontal or vertical) game screen."
},
{
  genre: "Rhythm",
  description: "Rhythm game or rhythm action is a genre of music-themed video game that challenges a player's sense of rhythm. Games in the genre typically focus on dance or the simulated performance of musical instruments, and require players to press buttons in a sequence dictated on the screen"
},
{
  genre: "Action-Adventure",
  description:"An action-adventure game can be defined as a game with a mix of elements from an action game and an adventure game, especially crucial elements like puzzles. Action-adventures require many of the same physical skills as action games, but also offer a storyline, numerous characters, an inventory system, dialogue, and other features of adventure games. They are faster-paced than pure adventure games, because they include both physical and conceptual challenges. Action-adventure games normally include a combination of complex story elements, which are displayed for players using audio and video. The story is heavily reliant upon the player character's movement, which triggers story events and thus affects the flow of the game."
},
{
  genre: "Shooter",
  description: "The purpose of a shooter game is to shoot opponents and proceed through missions without the player character being killed or dying as a result of the player's actions. A shooting game is a genre of video game where the focus is almost entirely on the defeat of the character's enemies using the weapons given to the player."
}, 
{
  genre: "Puzzles",
  description: "The genre is very broad, but it generally involves some level of abstraction and may make use of colors, shapes, numbers, physics, or complex rules. Unlike many video games, puzzle video games often do make use of lives that challenge a player by limiting the number of tries. In puzzle video games, players often try for a high score or to progress to the next level by getting to a certain place or achieving some criteria."
},
{
  genre:"Racing",
  description: "The racing video game genre is the genre of video games, either in the first-person or third-person perspective, in which the player partakes in a racing competition with any type of land, water, air or space vehicles. They may be based on anything from real-world racing leagues to entirely fantastical settings. In general, they can be distributed along a spectrum anywhere between hardcore simulations, and simpler arcade racing games."
}
])



GenreFact.create([
  {
    fact:"One of the first RPGs wasn't even a video game. It was based on the table top game Dungeons&Dragons(D&D).",
    game_genre: genres[0]
  },
  {
    fact: "Single-player RPG franchises for home video consoles include Square Enix’s Dragon Quest (1986– ) and Final Fantasy (1987– ), for Nintendo and Sony consoles. Nintendo’s Pokémon (1995– ) series is the most successful RPG franchise in terms of total media sales.",
    game_genre: genres[0]
  },{
    fact: "Most RPG games with have the player invents time to grind(leveling up), do side quest and do there best to complete the objectives give",
    game_genre: genres[0]
  },{
    fact:"The first fighting game, Heavyweight Champ, was designed in 1976.",
    game_genre: genres[1]
  },{

    fact:"Fighting game competition have been going strong, even hosting Evolution Championship Series (Evo for short).",
    game_genre: genres[1]
  },
  {
    fact: "Some fighting games even break the norm of one-on-one(1v1) fights, with two-on-two(2v2), three-on-three(3v3) and party game style(i.e super smash bros.)",
    game_genre: genres[1]
},
{
  fact:"Many game historians and fans consider the 1980 release of Space Panic to be the first true platform game while others consider then 1981 release of Nintendo's Donkey Kong to be the first.",
  game_genre: genres[2]
},
{
  fact:"Platform games are well know for having speed-runs(records of how fast you can finish the game) of games even holding competitions.",
  game_genre: genres[2]
},
{
  fact: "Rhythm games tend to given least representaion comparted to most game genre.Some people tend to use rhythum games to just de-stress.",
  game_genre: genres[3]
},{
  fact:"Action-Adventure have been were usually just action & adventure games, but most gamers tend to seem them as one in the same.",
   game_genre: genres[4]
},{
  fact:"Most people say that Action-Adventure came around the early 2000s",
  game_genre: genres[4]
},{
  fact: "Some common sub-genres for Shooters are First-Person-Shooter(FPS), Third-Person-Shooter(TPS) and Top-Down Shooter games.",
  game_genre: genres[5]
},{
  fact:"The first-person shooter genre has been traced as far back as Maze War, development of which began in 1973, and 1974's Spasim.",
  game_genre: genres[5]
},{
fact: "The types of puzzles can test many problem-solving skills including logic, pattern recognition, sequence solving, and word completion.",
game_genre: genres[6]
},{
fact: "The player may have unlimited time or infinite attempts to solve a puzzle, or there may be a time limit, or simpler puzzles may be made difficult by having to complete them in real time, as in Tetris.",
game_genre: genres[6]
},{
  fact: "The first racing game came out in 1973, called 'Space Race' for Atari",
  game_genre: genres[7]
}
])


GenreImage.create([
  {
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575306511/394bbeae8a82e614b28c216bd36facb8_qm05am.png",
    game_genre: genres[0]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575484432/Dark-Souls-Remastered-Transparent-PNG_sycupp.png",
    game_genre: genres[0]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575484600/143-1437863_skyrim-logo-elder-scrolls-v-skyrim_c2i56q.png",
    game_genre: genres[0]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575484681/580b57fcd9996e24bc43c341_bn3d1f.png",
    game_genre: genres[1]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312614/2000_cvtgpz.png",
    game_genre: genres[1]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485015/hd-super-smash-bros-ultimate-logo-png-free-unlimited-download-super-smash-bros-ultimate-logo-png-1201_603_ypauj8.png",
    game_genre: genres[1]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575312770/bb0b74c367af090e22fd60dbb85f999e_puasbo.png",
    game_genre: genres[1]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485215/640px-Super_Mario_Bros._Logo.svg_a2naxk.png",
    game_genre: genres[2]
  },{
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575315085/latest_tlkj9j.png",
  game_genre: genres[2]
  },{
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575315336/SonicSeriesLogo_jwzmdu.png",
  game_genre: genres[2]
  },{
  img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575321205/804db7f23241664d01fdbeaa05f8c28a_apwz55.png",
  game_genre: genres[2]
  },{
  img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575319498/H2x1_CharacterHub_Metroid_image1600w_rbvblu.jpg",
  game_genre: genres[2]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485416/5d8ed76a74d8df428bf2f152f223032d_cqzh5e.png",
    game_genre: genres[3]
  },{
  img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575316047/53294_libjmn.png",
  game_genre: genres[3]
  },{
  img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485518/67-679044_jsb-logo-ondarkbg-02-just-shapes-and-beats_ngkydy.png",
  game_genre: genres[3]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575320918/god-of-war-png-god-of-war-png-1439_vawiqh.png",
    game_genre: genres[4]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485624/210-2107518_playstation-shadow-of-colossus-logo_vrrf0t.png",
    game_genre: genres[4]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575321079/5852c19358215f0354495f4e_hislte.png",
    game_genre: genres[4]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575485861/halo-logo-png-image-31_ibmcxy.png",
    game_genre: genres[5]
  },{
  img_url: "https://1000logos.net/wp-content/uploads/2018/01/overwatch-logo.png",
  game_genre: genres[5]
  },{
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575486845/destiny-logo_0_sbhgwf.png",
  game_genre: genres[5]
  },{
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324437/250_ewooqt.png",
    game_genre: genres[6]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324550/Portal_logo_ucg6pt.png",
    game_genre: genres[6]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575324677/8be_jpaer4.png",
    game_genre: genres[6]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575325909/2000_n6kavk.png",
    game_genre: genres[7]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575486101/gran-turismo-png-gran-turismo-5-png-2362_epav8m.png",
    game_genre: genres[7]
  },{
    img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575486198/a38b6ea6-5f8f-43ca-bf8a-0e4c0fb16e0f_s6cbq3.png",
    game_genre: genres[7]
  }
])




Game.create!([
  {
    name: "Final Fanstay VII",
    description: "Final Fantasy VII takes place on a world referred to in-game as the, Planet, though it has been retroactively named, Gaia. The planet's lifeforce, called the Lifestream, is a flow of spiritual energy that gives life to everything on the Planet. Its processed form is known as, Mako. On a societal and technological level, the game has been defined as an industrial or post-industrial science fiction milieu. The central protagonist is Cloud Strife, an unsociable mercenary who claims to be a former 1st Class SOLDIER.",
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575333863/capsule_616x353_eubtpj.jpg",
    game_genre: genres[0]
  },
  {
    name: "Dark Souls",
    description: " A core mechanic of the game is exploration. Players are encouraged by the game to proceed with caution, learn from past mistakes, or find alternative areas to explore. Dark Souls takes place in a large and continuous open world environment, connected through a central hub area (Firelink Shrine).",
    img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575348688/220px-Dark_Souls_Cover_Art_tlhefx.jpg",
    game_genre: genres[0]
},
{
  name:"Street Fighter",
  description: " A popular series of fighting games, developed and published by Capcom, in which the players pit combatants from around the world, each with their own special moves, against one another.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575349265/Street-Fighter-V-720-Wallpaper-2_xe19hs.jpg",
  game_genre: genres[1]
},
{
  name: "Super Smash Bros.",
  description: "Instead of winning by depleting an opponent's life bar, players seek to launch their opponents off the stage and out of bounds. Characters have a damage total which rises as they take damage, represented by a percentage value",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575349605/FmipPBYeMJi5BorHCBVYPR-320-80_h9axnu.jpg",
  game_genre: genres[1]
},
{
  name: "Super Mario Bros.",
  description: "Super Mario Bros. was released for the Nintendo Entertainment System (NES) and is the first side-scrolling 2D platform game to feature Mario. It established many core Mario gameplay concepts. The brothers Mario and Luigi live in the Mushroom Kingdom, where they must rescue Princess Toadstool (Princess Peach) from Bowser.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575390478/SI_3DSVC_SuperMarioBros_image1600w_oqrheg.jpg",
  game_genre: genres[2]
},
{
  name: "MegaMan",
  description: " Mega Man is an android originally named Rock, created as a lab assistant by the scientist Dr. Light with Dr. Wily as his partner. Following treachery by Dr. Wily in which he reprogrammed most of Dr. Light's robots, Rock volunteered to be converted into a fighting robot to defend the world from Wily's violent robotic threats, thus becoming Mega Man.The player character must fight through the levels using Mega Man's Mega Buster—a cannon attached to his arm—to shoot the robotic enemies inhabiting his environment.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575390625/332474_itptis.jpg",
  game_genre: genres[2]
},
{
name: "Dance Dance Revolution",
description: "The core gameplay involves the player stepping their feet to correspond with the arrows that appears on screen and the beat. During normal gameplay, arrows scroll upwards from the bottom of the screen and pass over a set of stationary arrows near the top (referred to as the guide arrows or receptors, officially known as the Step Zone). When the scrolling arrows overlap the stationary ones, the player must step on the corresponding arrows on the dance platform, and the player is given a judgement for their accuracy of every streaked notes (From highest to lowest: Marvelous, Perfect, Great, Good, Almost, Miss).",
img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575391352/how-dance-dance-revolution-helped-me-rebuild-my-leg-343-1453905462.jpg_siex0k.jpg",
game_genre: genres[3]
},
{
  name:"Just Shapes & Beats",
  description:"Just Shapes & Beats is a chaotic co-op musical bullet-hell based on three simple things: avoid Shapes, move to the amazing Beats, and die, repeatedly.",
  img_url:"https://res.cloudinary.com/dvysqqdqe/image/upload/v1575390991/Just_20Shapes_20_20Beats-144x192_uoospv.jpg",
  game_genre: genres[3]
}, 
{
  name: "God of War",
  description: "Based in ancient mythology, the story follows Kratos, a Spartan warrior who was tricked into killing his family by his former master, the Greek God of War Ares. This sets off a series of events that leads to wars with the mythological pantheons. The Greek mythology era of the series sees Kratos follow a path of vengeance due to the machinations of the Olympian gods, while the Norse mythology era, which introduces his son Atreus as a secondary protagonist, shows Kratos on a path of redemption, which inadvertently brings the two into conflict with the Norse gods.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575391608/god-of-war.jpg_kkf44n.jpg",
  game_genre: genres[4]
},
{
  name: "Shadow of the Colossus",
  description: "The game's storyline focuses on a young man named Wander who enters a forbidden land. Wander must travel across a vast expanse on horseback and defeat sixteen massive beings, known simply as colossi, in order to restore the life of a girl named Mono. The game is unusual within the action-adventure genre in that there are no towns or dungeons to explore, no characters with whom to interact, and no enemies to defeat other than the colossi.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575391723/Shadow-of-the-Colossus-Knight_bygbze.jpg",
  game_genre: genres[4]
},
{
  name: "Halo",
  description: "The central focus of the franchise builds off the experiences of Master Chief John-117, one of a group of supersoldiers codenamed Spartans, and his artificial intelligence (AI) companion, Cortana.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575392060/81Z-GNaPsjL_ylr8cd.jpg",
  game_genre: genres[5]
},
{
  name: "Overwatch",
  description: "Overwatch assigns players into two teams of six, with each player selecting from a roster of over 30 characters, known as heroes, each with a unique style of play that is divided into three general roles that fit their purpose. Players on a team work together to secure and defend control points on a map or escort a payload across the map in a limited amount of time.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575392344/6246_g6mgfq.jpg",
  game_genre: genres[5]
},
{
name: "Tetris",
description: "The game has a simple goal of destroying lines of block before it reaches the top. The line is made up of a square block.",
img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575392604/tetris-lingo-feature_feature_qyvni7.jpg",
game_genre: genres[6]
},
{
  name: "Portal",
  description: "The player-character, Chell, is challenged and taunted by an artificial intelligence named GLaDOS (Genetic Lifeform and Disk Operating System) to complete each puzzle in the Aperture Science Enrichment Center using the portal gun with the promise of receiving cake when all the puzzles are completed. ",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575392853/m_img_27895_taennw.jpg",
  game_genre: genres[6]
},
{
  name: "Mario Kart",
  description: "Players compete in go-kart races, controlling one of a selection of characters, typically from the Mario franchise. Up to twelve characters can compete in each race, the exact number varies between games.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575393200/5c7d3a192628983f8f717b1f_pbhqb3.jpg",
  game_genre: genres[7]
},
{
  name: "Gran Turismo",
  description: "Gran Turismo games are intended to emulate the appearance and performance of a large selection of vehicles, nearly all of which are licensed reproductions of real-world automobiles.",
  img_url: "https://res.cloudinary.com/dvysqqdqe/image/upload/v1575393355/i1nOyyGzGetZj_au821k.jpg",
  game_genre: genres[7] 
}
])