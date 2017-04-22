
[User, Drone, Race].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

[{
  name: "Gianmaria",
  photo: "https://scontent.xx.fbcdn.net/v/t1.0-9/13680925_10208416550525259_9205161610862738893_n.jpg?oh=8f3dcbb5d7f263117be590fe10a77ffe&oe=599AA42C",
  nationality: "Italian",
  email: "gianmariacarrodano@libero.it",
  password: "dsquared",
  password_confirmation: "dsquared"
},{
  name: "Guv",
  photo: "https://scontent.xx.fbcdn.net/v/t1.0-9/309393_10150359889196203_4956653_n.jpg?oh=1a8c5f1c0607e7b01b66eef02759a3ca&oe=599633EA",
  nationality: "English",
  email: "guv@guv",
  password: "gangsta",
  password_confirmation: "gangsta"
},{
  name: "DonMarko",
  photo: "https://scontent.xx.fbcdn.net/v/t1.0-9/11694895_10153598594281159_8011085343456241339_n.jpg?oh=68dd708879799e2e444761fe761f10b0&oe=5979C60C",
  nationality: "English",
  email: "mark@mark",
  password: "bello",
  password_confirmation: "bello"
},{
  name: "ruthlessammo",
  photo: "https://scontent.xx.fbcdn.net/v/t1.0-9/996616_10151911109181142_25506471_n.jpg?oh=d6874ddebed52c25a3bd9cf45126883c&oe=597791B5",
  nationality: "English",
  email: "will@will",
  password: "daytona",
  password_confirmation: "daytona"
},{
  name: "Giacomo",
  photo: "https://scontent.xx.fbcdn.net/v/t1.0-1/c18.0.160.160/p160x160/528570_3572868797624_548820250_n.jpg?oh=5adec06e202652e7fe8d9e0851cd60ae&oe=59871765",
  nationality: "Italian",
  email: "giacomo@giacomo",
  password: "Milano",
  password_confirmation: "Milano"
}].each do |user|
  User.create!(user)
end

[{
  name: "DJI Mavic Pro N1265  ",
  photo: File.open(File.join(Rails.root, "db/images/drone1.jpg")),
  weight: 3.8,
  skills: "Very fast dude",
  speed: 60,
  price: 200,
  user_id: 1
}, {
  name: "DJI Phantom 4",
  photo: File.open(File.join(Rails.root, "db/images/drone2.png")),
  weight: 4.5,
  skills: "Super dynamic drone",
  speed: 65,
  price: 200,
  user_id: 2
}, {
  name: "DJI Inspire 2",
  photo: File.open(File.join(Rails.root, "db/images/drone3.png")),
  weight: 3.5,
  skills: "The new drone DJI Inspire 2 takes all the good of Inspire 1 and improves it. New image processors can record at a maximum resolution of 5.2k",
  speed: 108,
  price: 6889,
  user_id: 3
}, {
  name: "PARROT BEBOP",
  photo: File.open(File.join(Rails.root, "db/images/drone4.png")),
  weight: 2.5,
  skills: "The Parrot Bebop is one of the more technologically advanced drones for sale right now. It’s the AR Drone’s smaller, smarter, faster and more expensive little brother.",
  speed: 50,
  price: 204,
  user_id: 3
}, {
  name: "YUNEEC TYPHOON H",
  photo: File.open(File.join(Rails.root, "db/images/drone5.png")),
  weight: 3.7,
  skills: "The Typhoon H is the biggest competitor to the Phantom 4 we’ve seen so far. It’s a 6 rotor retractable landing gear beast of a drone, with a 360 degree gimbal (similar to the Inspire 1).",
  speed: 60,
  price: 1999,
  user_id: 3
}, {
  name: "TBS vendetta ",
  photo: File.open(File.join(Rails.root, "db/images/drone6.jpg")),
  weight: 2.8,
  skills: "Actually the fastest drone. Not recommend to beginners ",
  speed: 100,
  price: 500,
  user_id: 4
}, {
  name: "ImmersionRC Vortex 250 PRO",
  photo: File.open(File.join(Rails.root, "db/images/drone7.jpg")),
  weight: 2.8,
  skills: "The Vortex 250 Pro is another great ready-to-fly racing drone and it’s a direct competitor to the TBS Vendetta. It’s about the same size, but a bit heavier and comes with two bladed propellers instead of three like the vendetta.",
  speed: 90,
  price: 550,
  user_id: 4
}, {
  name: "IMMERSIONRC VORTEX 285",
  photo: File.open(File.join(Rails.root, "db/images/drone8.jpeg")),
  weight: 3.5,
  skills: "The Vortex 285 is another drone from ImmersionRC. It’s actually one of the first ready-to-fly FPV racing drones that came to market back in 2015, but because of the features it has and the price, it’s still very relevant even today. It runs similar firmware to the Vortex 250 Pro, but the hardware is just slightly slower which means that it shouldn’t be as responsive.",
  speed: 88,
  price: 330,
  user_id: 3
}, {
  name: "EACHINE RACER 250",
  photo: File.open(File.join(Rails.root, "db/images/drone9.png")),
  weight: 2.4,
  skills: "This is a drone that looks great from the outside. It’s small and looks like it could be pretty fast. It even comes with everything you need for FPV racing (a controller, charger, batteries and FPV gear). You get all of this for a low price of $359.99 which sounds great, but racing drones like these are not what they seem. You might have a lot of fun for the first few days of owning a drone like this, but after getting more familiar with what a good racing drone really is, you will soon be looking for something much better.",
  speed: 90,
  price: 359.99,
  user_id: 5
}, {
  name: "SYMA X5C",
  photo: File.open(File.join(Rails.root, "db/images/drone10.jpg")),
  weight: 3,
  skills: "The X5C is nothing special. It’s a simple quadcopter that almost looks like a DJI Phantom at first glance, but you won’t be taking amazing aerial videos with it, or racing through the forest. It has gyros and accelerometers to keep it stable and an auto flip feature like most drones out there. It also comes with a small camera for recording video with quality similar to a an old webcam.",
  speed: 40,
  price: 55,
  user_id: 3
}, {
  name: "Hubsan-X4",
  photo: File.open(File.join(Rails.root, "db/images/drone11.png")),
  weight: 3,
  skills: "The Hubsan X4 is personally my favorite (small) beginner drone. It’s about the same size as the Nano QX, but roughly half of the price. There’s 4 different versions of the Hubsan X4.",
  speed: 60,
  price: 65,
  user_id: 1
}, {
  name: "PARROT AR DRONE 2.0",
  photo: File.open(File.join(Rails.root, "db/images/drone12.png")),
  weight: 2.6,
  skills: "When the AR Drone 2.0 first came out, it was one of the coolest drones for sale on the market. It has a 1GHz 32 bit processor, 1GB of ram, gyros, accelerometers, magnetometers, a pressure sensor, an ultrasonic sensor, 2 cameras and more. Even though it’s over 2 years old, the AR Drone is still one of the most advanced quadcopters available in its price range which is $299.",
  speed: 108,
  price: 299,
  user_id: 5
}, {
  name: "PROTO X",
  photo: File.open(File.join(Rails.root, "db/images/drone13.png")),
  weight: 3,
  skills: "The Proto X is one of the smallest drones for sale on the planet. It has 3 gyros, 3 accelerometers, 4 motor speed controllers and a radio receiver all shoved into a tiny PCB board about the size of a quarter.",
  speed: 25,
  price: 35,
  user_id: 3
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
  time: 21.00,
  user_id: 2
}, {
  name: "Sulfur Falls",
  location: "La Spezia",
  date: Date.new(2017, 9, 23),
  time: 10.00,
  user_id: 4
}, {
  name: "Overrun",
  location: "Newcastle",
  date: Date.new(2017, 8, 6),
  time: 12.00,
  user_id: 2
}].each do |race|
  Race.create!(race)
end
