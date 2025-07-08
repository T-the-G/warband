Executable usage:
mb_warband_dedicated.exe [-r commands_file] [-m module_name]
-r reads commands from the specified file
-m server starts with the specified module (default is Native)

Sample .txt files contain sets of commands that can be used to initialize and start a dedicated server
Sample .bat files can help you start your servers with one click

Commands are:
add_factions <faction_id/faction_name> <faction_id/faction_name> #adds new factions for team 1 and team 2 to the factions list
add_map <map_id/map_name> #adds a new map to the maps list
allow_changing_mission <1 or 0> #sets if mission can be changed using admin panel or not
allow_renaming_server <1 or 0> #sets if server name can be renamed using admin panel or not
get_add_to_game_servers_list #returns if server is added to game servers list or not
get_auto_team_balance_limit #returns auto team balance threshold
get_ban_voteable #returns if banning a player is voteable or not
get_bot_count <team_no> #returns number of bots the specified team has
get_control_block_direction <control_block_direction_index> #returns control block direction option
get_combat_gold_bonus #returns combat gold bonus ratio
get_combat_speed <combat_speed_value> #returns combat_speedss
get_defender_spawn_count #returns number of respawns allowed for defenders
get_disallow_ranged_weapons #returns if ranged weapons are allowed or not
get_enable_valve_anti_cheat #returns if valve anti cheat is enabled or not
get_factions_list #returns the factions list
get_factions_voteable #returns if factions are voteable or not
get_force_default_armor #returns if players are forced to wear at least the default armor or not
get_friendly_fire #returns if friendly fire is enabled or not
get_friendly_fire_damage_friend_ratio #returns the percentage of damage received by friend when player hits a friend (0-100)
get_friendly_fire_damage_self_ratio #returns the percentage of damage received by self when player hits a friend (0-100)
get_ghost_mode #returns ghost mode option
get_kick_voteable #returns if kicking a player is voteable or not
get_map_time_limit #returns map time limit in minutes
get_maps_list #returns the maps list
get_maps_voteable #returns if maps are voteable or not
get_max_players #returns the maximum number of players that can join the server
get_melee_friendly_fire #returns if melee friendly fire is enabled or not
get_mission #returns the selected mission
get_num_bots_voteable #returns bots upper limit for votes
get_pass #returns login password for a regular player
get_pass_admin #returns login password for admin privilege
get_pass_private #returns login password for a private player
get_player_respawn_as_bot <1 or 0> #returns if players to spawn as bots or not
get_player_banners_allowed #returns if player banners are allowed or not
get_points_gained_for_capturing_flags #returns points gained for capturing flags
get_port #returns the connection port for server
get_randomize_factions #returns whether the factions are randomized or not
get_respawn_period #returns respawn period
get_round_gold_bonus #returns round gold bonus ratio
get_round_max_seconds #returns maximum seconds for round
get_server_ban_list_file <file_name> #returns the ban list file, necessary for multiple servers running at the same folder
get_server_log_folder #returns the log folder, necessary for multiple servers running at the same folder
get_server_name #returns server name displayed at servers list
get_starting_gold #returns starting gold ratio
get_steam_port #returns the communication port for steam
get_team_point_limit #returns team point limit
get_team_points_gained_for_flags #returns the percentage multiplier to team points gained for flags
get_upload_limit #returns upload limit for server
get_valid_vote_ratio #returns the percentage of 'yes' votes required for a poll to get accepted
get_welcome_message #returns welcome message
read_command_file <filename> #reads a chain of commands from a file at the same directory
set_add_to_game_servers_list #sets if server is added to game servers list or not
set_auto_team_balance_limit #sets auto team balance threshold (2-7, 7 for unlimited)
set_ban_voteable #sets banning a player voteable or not
set_bot_count <team_no> <amount> #sets number of bots for the specified team
set_combat_gold_bonus <value> #sets combat gold bonus ratio (0-100)
set_control_block_direction <control_block_direction_index> #sets control block direction: 0=automatic, 1=by mouse movement
set_combat_speed <combat_speed_value> #sets combat_speed: 0=slowest, 2=average 4 = fastest
set_defender_spawn_count <value> #sets number of respawns allowed for defenders (0-6, 0 for unlimited)
set_disallow_ranged_weapons #sets if ranged weapons are allowed or not
set_enable_valve_anti_cheat #sets if valve anti cheat is enabled or not (0-1)
set_factions <faction_id/faction_name> <faction_id/faction_name> #sets the next factions for team 1 and team 2
set_factions_voteable <1 or 0> #sets factions voteable or not
set_force_default_armor <1 or 0> #sets if players are forced to wear at least the default armor or not
set_friendly_fire <1 or 0> #sets if friendly fire is enabled or not
set_friendly_fire_damage_friend_ratio <value> #sets the percentage of damage received by friend when player hits a friend (0-100)
set_friendly_fire_damage_self_ratio <value> #sets the percentage of damage received by self when player hits a friend (0-100)
set_ghost_mode <ghost_mode_index> #sets ghost mode: 0=free, 1=stick to any player, 2=stick to team members, 3=stick to team members' view
set_kick_voteable <1 or 0> #sets kicking a player voteable or not
set_map <map_id/map_name> #sets the next map
set_map_time_limit <value> #sets map time limit in minutes (5-120)
set_maps_voteable <1 or 0> #sets maps voteable or not
set_max_players <amount> <private_amount> #sets the maximum number of players that can join the server
set_melee_friendly_fire <1 or 0> #sets if melee friendly fire is enabled or not
set_mission <mission_id/mission_name> #sets the next mission
set_num_bots_voteable <amount> #sets bots upper limit for votes
set_pass [<password>] #sets login password for a regular player
set_pass_admin [<password>] #sets login password for admin privilege
set_pass_private [<password>] #sets login password for a private player
set_player_banners_allowed <1 or 0> #sets if player banners are allowed or not
set_player_respawn_as_bot <1 or 0> #sets players to spawn as bots or not
set_points_gained_for_capturing_flags <value> #sets points gained for capturing flags (0-10)
set_port <port> #sets the connection port for server
set_randomize_factions <1 or 0> #randomizes the faction results using the factions list
set_respawn_period <value> #sets respawn period
set_round_gold_bonus <value> #sets round gold bonus ratio (0-1000)
set_round_max_seconds <value> #sets maximum seconds for round
set_server_ban_list_file <file_name> #sets the ban list file, necessary for multiple servers running at the same folder
set_server_log_folder <folder_name> #sets the log folder, necessary for multiple servers running at the same folder
set_server_name <server_name> #sets server name displayed at servers list
set_starting_gold <value> #sets starting gold ratio (0-1000)
set_steam_port #sets the communication port for steam
set_team_point_limit <value> #sets team point limit (3-1000)
set_team_points_gained_for_flags <value> #sets the percentage multiplier to team points gained for flags (25-400)
set_upload_limit <limit> #sets upload limit for server
set_valid_vote_ratio #sets the percentage of 'yes' votes required for a poll to get accepted
set_welcome_message #sets welcome message

start #starts the mission or jumps to the next mission if there is already a mission running
stats #reports current fps, number of clients etc.

DLC commands are:
use_class_limits  <0 or 1> #sets if class limits are used or not
class_limit_player_count <value> #sets the minimum amount of players need for class limits to kick in (0-200)
squad_size <value> #sets the base number of bots assigned to each player in commander battle mode (0-200)
scale_squad <0 or 1> #sets if squad size will be scaled according to team balance or not
build_points_team1 <value> #sets to amount of build points available to the first team (0-1000)
build_points_team2 <value> #sets to amount of build points available to the second team (0-1000)
allow_multiple_firearms <0 or 1> #sets if a player is allowed to carry more than one firearm at the same time or not
enable_bonuses <0 or 1> #sets if special unit bonuses are used or not
bonus_strength <value> #sets the strength of bonuses (1-500)
bonus_range <value> #sets the range in which bonuses are effective (1-100)
fall_off_horse <value> #sets the chance to fall off the horse when hit (0-100)
horse_dying <value> #sets the modifier for damage taken when your horse dies (0-1000)
auto_kick <0 or 1> #enables auto kick or not
max_teamkills_before_kick <value> #sets the amount of teamkills allowed before getting auto kicked (0-25, 0 for unlimited)
auto_horse <0 or 1> #sets if automatic killing of stray horses is enabled
auto_swap <0 or 1> #sets if teams are auto-swapped in battle and siege mode or not
limit_grenadier <value> #sets the limit for foot guard units in each team (0-100)
limit_skirmisher <value> #sets the limit for light infantry units in each team (0-100)
limit_rifle <value> #sets the limit for rifle units of the light infantry count (0-100)
limit_cavalry <value> #sets the limit for cavalry units in each team (0-100)
limit_lancer <value> #sets the limit for lancer units of the cavalry count (0-100)
limit_hussar <value> #sets the limit for hussar units of the cavalry count (0-100)
limit_dragoon <value> #sets the limit for dragoon units of the cavalry count (0-100)
limit_cuirassier <value> #sets the limit for cuirassier units of the cavalry count (0-100)
limit_heavycav     <value> #sets the limit for non-cuirassier heavy cavalry units of the cavalry count (0-100)
limit_artillery <value> #sets the limit for artillery units in each team (0-100)
limit_rocket  <value> #sets the limit for rocket units in each team (0-100)
limit_sapper <value> #sets the limit for sapper units in each team (0-100)
limit_musician <value> #sets the max number of musicians in each regiment (0-125)
limit_sergeant <value> #sets the max number of sergeants/ensigns in each regiment (0-125)
limit_officer <value> #sets the max number of officers in each regiment (0-125)
limit_general <value> #sets the max number of generals in each team (0-125)
max_num_bots <value> #set the max number of total bots the server is allowed to spawn (50-500)\

New NW Patch:
commander_battle_rambo <value> #cb rambo 1 is on, 0 is off
commander_battle_no_spread <value>  # 0 is off, 1 is on.  disable line inf spread
limit_medic <value> #sets the limit for medic units in each team (0-100)
custom_maps_enabled <value> # 0-100  selects the number of custom maps that can be chosen from
admin_white_list_enabled <value> # only allow admins from the cd key id whitelist 1 is on, 0 is off
admin_white_list_key <value> # Any id entered here will be added to the white list for admins.
custom_command1  <value> # toggle welcome message on or off.  0 is off, 1 is on
custom_command2  <value> # toggle competitive score on or off.  0 is off, 1 is on.
custom_command3  <value> # set the no rambo range in commander battle. (0-100)
custom_command4  <value> # set the limit on the number of artillery trains available (0-100)
#custom_commands 5-10 are not used currently but modders can use them
set_disallow_ranged_weapons #sets if ranged weapons are allowed or not.  Note, this will only effect people who spawn after this is set. 0 is off, 1 is on.  