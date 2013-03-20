# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	#START - VANILLA ICE USER
	vanilla = User.create :name => "Vanilla Ice", :password => "jones", :image => "http://t0.gstatic.com/images?q=tbn:ANd9GcStpydzzQNQO_V4JwqDQ7NANm86demJ0ZflUw8qEmpJFGzQ03TMyA"
	vBoard = Board.create :name => "Whole Lotta' Me!", :user_id => vanilla.id

	#vanilla ice board
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		vBoard.pins.create :url => "http://nicenicejpg.com/#{height}/#{width}", :user_id => vanilla.id
	end

	#bill murray board
	billBoard = Board.create :name => "BillBoard", :user_id => vanilla.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		billBoard.pins.create :url => "http://fillmurray.com/#{height}/#{width}", :user_id => vanilla.id
	end


	##############  END Vanilla Ice User

	#START Shackleton User
	shack = User.create :name => "Shackleton", :password => "jones", :image => "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Shackletonhead.jpg/220px-Shackletonhead.jpg"
	trans = Board.create :name => "Bacon!", :user_id => shack.id

	#transportation board 
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		trans.pins.create :url => "http://fillmurray.com/#{height}/#{width}", :user_id => shack.id
	end


	#fashion board
	fashion = Board.create :name => "Doggies", :user_id => shack.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		fashion.pins.create :url => "http://placedog.com/#{height}/#{width}", :user_id => shack.id
	end

	########### END Shackleton User


	#START Roland User
	shack = User.create :name => "R. Deschain", :password => "jones", :image => "http://i213.photobucket.com/albums/cc286/lakewrestler125/Roland-2.png"
	trans = Board.create :name => "It's Charlie!", :user_id => shack.id

	#transportation board 
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		trans.pins.create :url => "http://placesheen.com/#{height}/#{width}", :user_id => shack.id
	end


	#fashion board
	fashion = Board.create :name => "Food", :user_id => shack.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		fashion.pins.create :url => "http://nicenicejpg.com/#{height}/#{width}", :user_id => shack.id
	end

	########### END Roland User

		#START Ender User
	shack = User.create :name => "Ender", :password => "jones", :image => "http://t1.gstatic.com/images?q=tbn:ANd9GcSCUFENZ1LZXbsLM-24fqi2kHobfEQeeLqDLtLqpVgQHToWmCpF"
	trans = Board.create :name => "Cats", :user_id => shack.id

	#transportation board 
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		trans.pins.create :url => "http://placekitten.com/#{height}/#{width}", :user_id => shack.id
	end


	#fashion board
	fashion = Board.create :name => "Dogs", :user_id => shack.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		fashion.pins.create :url => "http://placedog.com/#{height}/#{width}", :user_id => shack.id
	end

	########### END Ender User



	#START Churchill User
	shack = User.create :name => "Churchill", :password => "jones", :image => "http://www.museumsyndicate.com/images/artists/667.jpg"
	trans = Board.create :name => "Abstract", :user_id => shack.id

	#transportation board 
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		trans.pins.create :url => "http://placedog.com/#{height}/#{width}", :user_id => shack.id
	end


	#fashion board
	fashion = Board.create :name => "Night Out", :user_id => shack.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		fashion.pins.create :url => "http://placesheen.com/#{height}/#{width}", :user_id => shack.id
	end

	########### END Churchill User


	#START Churchill User
	shack = User.create :name => "Amelia", :password => "jones", :image => "http://www.csmonitor.com/var/ezflow_site/storage/images/media/content/2012/0602-amelia-earhart-last-days.jpg/12729091-1-eng-US/0602-amelia-earhart-last-days.jpg_full_600.jpg"
	trans = Board.create :name => "Kats!", :user_id => shack.id

	#transportation board 
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		trans.pins.create :url => "http://placekitten.com/#{height}/#{width}", :user_id => shack.id
	end


	#fashion board
	fashion = Board.create :name => "Bill", :user_id => shack.id
	30.times do
		height = rand(200..700).to_i
		width = rand(200..700).to_i
		fashion.pins.create :url => "http://fillmurray.com/#{height}/#{width}", :user_id => shack.id
	end

	########### END Churchill User




	#START Andrew USer
	#My personal board
	T = User.create :name => "Andrew", :password => "jones", :image => "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/P6M_SeaMaster.jpg/300px-P6M_SeaMaster.jpg"

	F = Board.create :name => "Sports", :user_id => T.id
	30.times do
		height = rand(200..400).to_i
		width = rand(200..400).to_i
		F.pins.create :url => "http://placesheen.com/#{height}/#{width}", :user_id => T.id
	end


	# My Personal Boards - and yes they're hard coded in	

	
	B = Board.create :name => "Planes", :user_id => T.id
			B.pins.create :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/Century.jpg", :user_id => T.id
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/080129-F-1234S-016.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/F-108_mockup.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060905-F-1234S-053.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060922-F-1234S-002.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060831-F-1234S-020.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/YF-102.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/F-102A_in_flight.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060928-F-1234S-001.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060928-F-1234S-003.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060928-F-1234S-005.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060928-F-1234S-004.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/050322-F-1234P-023.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/050322-F-1234P-023.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/070821-F-1234S-003-1.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/F-104_right_side_view.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060831-F-1234S-040.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060831-F-1234S-044.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/F-106_01-1.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/F-106_03-1.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/060928-F-1234S-030.jpg"
			B.pins.create :user_id => T.id, :url => "http://i631.photobucket.com/albums/uu38/kilomuse/century%20series/Thunderbirds_F100D-23.jpg"


  