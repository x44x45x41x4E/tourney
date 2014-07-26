# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

GameType.create([
		{ :name => 'Card Game' }, 
		{ :name => 'Board Game'}, 
		{ :name => 'Video Game'}, 
		{ :name => 'Sports'}
	])

Game.create([
		{ :name => 'Magic the Gathering', :game_type_id => '1'}, 
		{ :name => 'Card Fight Vanguard', :game_type_id => '1'}, 
		{ :name => 'Monopoly Deal', :game_type_id => '1'}, 
		{ :name => 'Pokemon TCG', :game_type_id => '1'}, 
		{ :name => 'YU-GI-OH!', :game_type_id => '1'}, 
		{ :name => 'Others', :game_type_id => '1'}, 
		{ :name => 'Chess', :game_type_id => '2'}, 
		{ :name => 'Hero Clix', :game_type_id => '2'}, 
		{ :name => 'Battle Star Galactica', :game_type_id => '2'}, 
		{ :name => 'Snake and Ladders', :game_type_id => '2'}, 
		{ :name => 'Others', :game_type_id => '2'}, 
		{ :name => 'Dota2', :game_type_id => '3'},
		{ :name => 'Dota', :game_type_id => '3'},
		{ :name => 'LOL', :game_type_id => '3'},
		{ :name => 'Age of Empires', :game_type_id => '3'},
		{ :name => 'Basketball', :game_type_id => '3'},
		{ :name => 'Ping-Pong', :game_type_id => '3'},
		{ :name => 'Boxing', :game_type_id => '3'}
	])