
User.create(fullname: "Test User",
            username: "testuser",
            email: "test@user.com",
            password: "password",
            password_confirmation: "password")

5.times do
  user = User.create(fullname: Faker::Name.name,
              username: Faker::Name.first_name,
              email: Faker::Internet.email,
              password: "password",
              password_confirmation: "password")

  10.times do
    user.gifs << Gif.new(title: "Random Gif",
                         image_file: Giphy.random,
                         tag_list: ["awesome", "funny", "cool"].sample)
  end
end
