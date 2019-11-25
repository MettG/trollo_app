user = User.create(email:"test@test.com",user_name:"username",password:"password",password_confirmation:"password")
l_choice=["Development","Testing","Final"]
3.times do
	board = Board.create(name: Faker::CryptoCoin.coin_name)
	3.times do |i|
		list = board.lists.create(
			name: l_choice[i],
			priority: i
		)
		5.times do |j|
			u = nil
			if rand(2) == 1
				u = user.id
			end
			list.tasks.create(
				name: Faker::Job.title,
				description: Faker::Games::LeagueOfLegends.quote,
				priority: j,
				eta: 0,
				user_id: u
			)
		end
	end
end