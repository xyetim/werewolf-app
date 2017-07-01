# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p "Deleting #{Card.count} cards"
Card.destroy_all

Card.create!([
    { name: 'Seer', align: 'Villager', action: 'night', desc: 'Target one player every night to look at. The moderator will tell you what you see for their alignment; Werewolf or Villager (Villager includes misc. roles).', night: 1, icon: 'fa-search-plus', points: 7, max: 1, help: 'Remember that there is only one active Seer at a time. You should only tell the Seer WW for werewolf team or V for villager team or misc team.' },
    { name: 'Bodyguard', align: 'Villager', action: 'night', desc: 'Target one player every night to protect. You cannot protect yourself. Alert the moderator at night who you want to protect.', night: 1, icon: 'fa-shield', points: 3, max: 1, help: 'Remember that Bodyguard cannot protect themselves, but they may protect others as many times as they want. The Bodyguard does not die if they protect someone, and they do not know who they fought off. Bodyguards CAN fight off magical attacks, you can come up with any story flairs as to why.' }, 
    { name: 'Hunter', align: 'Villager', action: 'once', desc: 'When you die during the day or night, you may target and shoot one player. The time (day/night) that you die is the same time you kill your targeted player.', night: 0, icon: 'fa-crosshairs', points: 3, max: 1, help: 'Remember that a Hunter may only use their kill action when THEY die. If the hunter is killed at night, you should message them before morning starts and ask them who they shoot, so you can finish resolving the night events.' }, 
    { name: 'Mason', align: 'Villager', action: 'once', desc: 'You know who the other masons are. The moderator will tell you who the other masons are. You may not speak about being masons to other villagers or the secret society you belong to will kill you the next night (This is up to the moderator).', night: 1, icon: 'fa-user-o', points: 2, max: 3, help: 'Remember that Masons are a part of a secret society, and speaking about their group in public will get them killed at night. However, you get to determine what constitutes giving themselves away. Try giving them strikes before they will be killed.' },
    { name: 'Apprentice Seer', align: 'Villager', action: 'once', desc: 'When the Seer is killed during the day or night, you become the Seer.', night: 0, icon: 'fa-search', points: 4, max: 1, help: 'Important! This role is NOT a Seer! This role will become the Seer if the original Seer dies. When this happens, link the Seer page to this player and have them act as the Seer in future nights. BUT, leave it to the player to decide if they reveal they were the Apprentice Seer.' },
    { name: 'Spellcaster', align: 'Villager', action: 'night', desc: 'Target one player every night to spellcast. A spellcast player will have to do one of the following: Only speak when addressed, otherwise they cannot talk; Or they must only speak in gibberish or nonsense. You choose what spell to cast.', night: 1, icon: 'fa-microphone-slash', points: 1, max: 1, help: 'Important! The Spellcaster chooses one person each night to cast a spell on. You may limit their spells of allow them to try new ones, but the defaults are: Only speak when addressed, otherwise cannot talk; Or only speak in gibberish or nonsense. You may also allow muting as well, but remember Skype is audio based, and text chat should NOT be used.' },
    { name: 'Witch', align: 'Villager', action: 'night', desc: 'You have two powers you can use once each per game. You can save someone who is attacked at night and/or kill one other player at night. You will not know who you saved at night, and players will know that the witch killed someone at night that next morning.', night: 1, icon: 'fa-magic', points: 4, max: 1, help: 'Remember that you should not tell the witch who they are saving/have saved at night, or count their kill during the night. It is up to you to reveal if their target was killed by the Witch, or just simple killed. The Witch is limited to either: using each of their powers once per game, or using only one power per game. This is entirely your call, although the action default is the former.' },
	{ name: 'Tough Guy', align: 'Villager', action: 'once', desc: 'When you are attacked at night, you will survive for one more day. Moderator will reveal you have been fatally wounded and have only today to live.', night: 0, icon: 'fa-hand-rock-o', points: 3, max: 1, help: 'Important! Do not reveal this player as dead after they are killed. Tough Guy will survive the next day and die the following night, so be sure to resolve the nights correctly. Note that a priest may NOT save them if they have already been fatally attacked the previous night.' },
	{ name: 'Doppelganger', align: 'Villager', action: 'once', desc: 'Target one player to copy, and alert the moderator on the first night who you chose. When your target dies, you discover and become that role.', night: 1, icon: 'fa-refresh', points: -2, max: 1, help: 'Important! This role must choose someone to copy at the BEGINNING of the game. Do NOT reveal that target role to the Doppelganger until after they have died and the Doppelganger can take that role. Some Role Clarifications: Becoming a Lone Wolf will prevent the other Lone Wolf from winning unless one of them dies. Becoming a Pet Wolf requires them to immediately choose another player to be attached to. Becoming a Dream Wolf will prevent them from interacting with the wolves unless another wolf dies or they are the only wolf. Becoming a Beholder requires the mod to reveal the current Seer to them immediately. Becoming a Hoodlum requires them to choose two players that will need to die for them to win- but if there are not enough players, the new Hoodlum cannot win.' },
	{ name: 'Mayor', align: 'Villager', action: 'day', desc: 'When voting for someone to be lynched, your vote counts twice.', night: 0, icon: 'fa-legal', points: 2, max: 1, help: 'Important! You do not have to reveal the Mayor for their votes to count twice! Simply keep the count in mind when lynches occur.' },
    { name: 'Priest', align: 'Villager', action: 'once', desc: 'Target one player to protect from all night eliminations. You may only use your holy power once per game.', night: 1, icon: 'fa-medkit', points: 3, max: 1, help: 'Important! the Priest power may protect any role from any night eliminations from any other role, for example: Villager protected from Werewolf, Werewolf protected from Hunter, Tanner protected from Witch, etc. A Priest may NOT protect themselves.' },
    { name: 'Village Idiot', align: 'Villager', action: 'day', desc: 'You must always vote for someone being lynched during the day.', night: 0, icon: 'fa-thumbs-o-down', points: 2, max: 1, help: 'This role will always vote FOR lynching. If they say otherwise, be sure to count their vote correctly (FOR).' },
    { name: 'Pacifist', align: 'Villager', action: 'day', desc: 'You must always vote against someone being lynched during the day.', night: 0, icon: 'fa-hand-peace-o', points: -1, max: 1, help: 'This role will always vote AGAINST lynching. If they say otherwise, be sure to count their vote correctly (AGAINST).' },
    { name: 'Insomniac', align: 'Villager', action: 'night', desc: 'Target one player every night to overhear. You do not sleep well and overhear a neighbor of your choice. The moderator will tell you if there was noise or not at their house.', night: 1, icon: 'fa-bed', points: 4, max: 1, help: 'Important! You do NOT tell the Insomniac who or what they heard at the target house, but simply if there was ANY noise (meaning, if there was any action done to or by this player).' },
    { name: 'Beholder', align: 'Villager', action: 'once', desc: 'On the first night, the moderator will reveal the Seer to you.', night: 1, icon: 'fa-eye', points: 2, max: 1, help: 'Remember this role is revealed the first Seer at the beginning of the game. If there is an Apprentice Seer or Doppelganger Seer, you do not reveal them.' },
    { name: 'Prince', align: 'Villager', action: 'day', desc: 'You cannot be lynched during the day.', night: 0, icon: 'fa-star', points: 3, max: 1, help: 'Important! You should only reveal the role of the Prince when they are VOTED to be lynched, not ACCUSED. This way, a lynch is wasted on this player, and they survive. If a player claims Prince and is lynched anyways by the town, the former direction still applies.' },
    { name: 'Diseased', align: 'Villager', action: 'once', desc: 'If you are attacked by werewolves, they do not get to kill the next night.', night: 0, icon: 'fa-heartbeat', points: 3, max: 1, help: 'Remember that this role ONLY affects werewolf team attackers. For example, a Witch or Hunter can kill the Diseased player and not be affected. Additionally, the Diseased can be saved by Witch or Priest and still utilize its affect if they are attacked. This will only NOT work if they are protected by Bodyguard, so be careful with this distinction!' },
    { name: 'Martyr', align: 'Villager', action: 'once', desc: 'Once per game, you can take the place of someone about to be lynched BEFORE their role is revealed. You will be lynched instead.', night: 0, icon: 'fa-hand-stop-o', points: 3 , max: 1, help: 'Important! A Martyr may only take the place of a to-be lynched player BEFORE you announce their role. Player may announce, or lie about, their own roles before a Martyr saves them.' },
    { name: 'Cursed', align: 'Villager', action: 'once', desc: 'If you are attacked at night by werewolves, you become part of that team and do not die.', night: 0, icon: 'fa-unlink', points: -3 , max: 1, help: 'Important! Do not out the cursed player when they are attacked by werewolves! IF they are killed by a Witch or Hunter, then they are dead. Otherwise, link them the Werewolf card and reveal them to the werewolf team the NEXT night.' },
    { name: 'Villager', align: 'Villager', action: 'none', desc: 'You are a normal villager, you want to rid the town of werewolves by lynching them during the day.', night: 0, icon: 'fa-user', points: 1, max: 20, help: 'Remember that this role does not have an action, but they are free to lie about it to other players. Do not out them!' },
    
    
    { name: 'Werewolf', align: 'Werewolf', action: 'night', desc: 'Target one player every night to kill. All werewolves must agree on the choice(s) and have someone alert the Moderator.', night: 1, icon: 'fa-paw', points: -6 , max: 12 , help: 'Remember that this role must know about all other active werewolves and they must all choose one person to kill, or appoint one werewolf to tell you who they want to kill.' }, 
    { name: 'Wolf Cub', align: 'Werewolf', action: 'once', desc: 'You wake up with the werewolves, but do not get a say in who dies. If you die during the day or night, the other werewolves can kill twice the next night.', night: 1, icon: 'fa-paw', points: -8, max: 1, help: 'Important! This role technically gets no say in who is killed at night. If they are the only werewolf left, they grow up into a werewolf. Link them the werewolf card page, this is their role now.' }, 
    { name: 'Lone Wolf', align: 'Werewolf', action: 'night', desc: 'You wake up and kill with the other werewolves, but you only win if you are the last player alive.', night: 1, icon: 'fa-paw', points: -5, max: 1, help: 'Remember that this role may only win if they are the ONLY werewolf left. The other dead werewolves will also win if the Lone Wolf wins, but Lone Wolf loses if they are among living werewolves.' }, 
    { name: 'Dream Wolf', align: 'Werewolf', action: 'night', desc: 'You do not wake up and kill with the other werewolves until one other werewolf has been killed.', night: 1, icon: 'fa-paw', points: -5, max: 1, help: 'Important! This role IS a werewolf, but will not wake up with the other werewolves until one other werewolf is killed. Seer will still see them as a werewolf.' }, 
    { name: 'Pet Wolf', align: 'Werewolf', action: 'night', desc: 'Target one player to be your companion, and alert the moderator on the first night who you chose. When your companion dies, you also die.', night: 1, icon: 'fa-paw', points: -4, max: 1, help: 'Important! This role chooses a player to attach to at the BEGINNING of the game. If the attached player is lynched, the pet wolf dies the next night. If the attached player dies at night, the pet wolf also dies that night.' }, 
    { name: 'Minion', align: 'Werewolf', action: 'none', desc: 'You know who the werewolves are, but you do not wake up with them. The moderator will tell you who is a werewolf, and you are on the Werewolf team.', night: 0, icon: 'fa-user-secret', points: -6, max: 1, help: 'Remember that the Minion will know who the werewolves are, but not the Sorceress. The werewolves do not know who the Minion is and CAN kill the minion by accident.' }, 
   	{ name: 'Sorceress ', align: 'Werewolf', action: 'night', desc: 'Target one player every night to look at. The moderator will tell you if that player is the Seer or not. You do not know who the Werewolves are, and you are on the Werewolf team.', night: 0, icon: 'fa-search-minus', points: -3, max: 1, help: 'Remember that this role is only looking for the Seer, and their role is pretty much the same. They only win if the werewolves win, so taking out the Seer is helpful. The Sorceress will only see Seer or Not Seer from the moderator when targeting a player.' }, 
    
    
    
    { name: 'Tanner', align: 'Misc', action: 'none', desc: 'You hate your job and your life. You win if you are killed during the day or night.', night: 0, icon: 'fa-frown-o', points: -2, max: 1, help: 'Remember that this role ONLY wins if they die. It does not matter how they die.' },
    { name: 'Hoodlum', align: 'Misc', action: 'once', desc: 'Target two players to be your enemies, and alert the moderator on the first night who you chose. You win if your enemies die and you live until the end of the game.', night: 1, icon: 'fa-meh-o', points: 0, max: 1, help: 'Important! This role chooses their targets at the BEGINNING of the game. This role may ONLY win if their two targets die and they live until the end of the game.' }
        
    ])
p "Created #{Card.count} cards"
