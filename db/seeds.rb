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
		{ :name => 'Basketball', :game_type_id => '4'},
		{ :name => 'Ping-Pong', :game_type_id => '4'},
		{ :name => 'Boxing', :game_type_id => '4'}
	])

User.create([
		{ 	:first_name => 'Bogart',
			:last_name => 'Dope',
			:email => 'sample@sample.com',
			:encrypted_password => '$2a$10$3e7SkGNW.dp0I./Lalz2NusFwhntY71w1/59Bg7RH3c4ipR1L.zLe',
			:sign_in_count => '1',
			:current_sign_in_at => '2014-07-26 16:46:13',
			:last_sign_in_at => '2014-07-26 16:46:13',
			:current_sign_in_ip => '127.0.0.1',
			:last_sign_in_ip => '127.0.0.1',
			:created_at => '2014-07-26 16:46:13',
			:updated_at => '2014-07-26 16:46:13'
			}
	])

TourneyType.create([
		{ :tourney_name => 'Tournament' },
		{ :tourney_name => 'Casual'}
	])

GameMode.create([
		{ :name => 'Round Robin' },
		{ :name => 'Scorer'},
		{ :name => 'Scorer'},
		{ :name => 'Others'}
	])

RsvpStats.create([
		{ :status => 'Join' },
		{ :status => 'Maybe' },
		{ :status => 'Not Going' }
	])
