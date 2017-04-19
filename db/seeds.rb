[User, Drone, Race].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

[{
  name: "Gianmaria",
  photo: "https://www.facebook.com/photo.php?fbid=10208416550525259&set=a.1476974658272.61668.1650906924&type=3&theater",
  nationality: "Italian",
  email: "gianmariacarrodano@libero.it",
  password: "dsquared",
  password_confirmation: "dsquared"
},{
  name: "Guv",
  photo: "https://www.facebook.com/photo.php?fbid=10154567110826203&set=a.470372636202.275202.657506202&type=3&theater",
  nationality: "English",
  email: "guv@guv",
  password: "gangsta",
  password_confirmation: "gangsta"
},{
  name: "DonMarko",
  photo: "https://www.facebook.com/photo.php?fbid=10153598594281159&set=a.458815111158.243626.503321158&type=3&theater",
  nationality: "English",
  email: "mark@mark",
  password: "bello",
  password_confirmation: "bello"
},{
  name: "ruthlessammo",
  photo: "https://www.facebook.com/photo.php?fbid=10151911109181142&set=a.468960126141.268832.640086141&type=3&theater",
  nationality: "English",
  email: "will@will",
  password: "daytona",
  password_confirmation: "daytona"
},{
  name: "Giacomo",
  photo: "https://www.facebook.com/giacobrunetti",
  nationality: "Italian",
  email: "giacomo@giacomo",
  password: "Milano",
  password_confirmation: "Milano"
}].each do |user|
  User.create!(user)
end

[{
  name: "DJI Mavic Pro N1265  ",
  photo: "http://www.dronionline.net/new/wp-content/uploads/2016/10/dji-mavic-pro-fly-more-combo-dji-1-1.jpg",
  weight: 30,
  skills: "Very fast dude",
  speed: 60,
  price: 200,
  user_id: 1
}, {
  name: "DJI Phantom 4",
  photo: "https://asset1.djicdn.com/images/360/phantom-4/draggable_360_v2/0_0.png",
  weight: 44,
  skills: "Super dynamic drone",
  speed: 65,
  price: 200,
  user_id: 2
}].each do |drone|
  Drone.create!(drone)
end


[{
  name: "Jungle of discord",
  location: "Liverpool",
  date: Date.new(2017, 9, 29),
  time: 18.00,
  user_id: 1
}, {
  name: "Royal Rumble",
  location: "London",
  date: Date.new(2017, 7, 10),
  time: 18.00,
  user_id: 2
}].each do |race|
  Race.create!(race)
end
