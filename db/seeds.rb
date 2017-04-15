[User, Drone, Race].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

[{
  name: "The Beatles",
  photo: "http://www.billboard.com/files/styles/article_main_image/public/media/the-beatles-circa-1966-650-430.jpg",
  weight: 70,
  skills: "Very fast",
  speed: 65
}].each do |user|
  User.create!(user)
end
