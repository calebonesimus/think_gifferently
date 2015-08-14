# These are all being created without users for now

user = User.create(fullname: "Test User",
                   username: "testuser",
                   email: "test@user.com",
                   password: "password",
                   password_confirmation: "password")

user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/frsib.gif",
                        title: "Bed",
                        summary: "Sleep is too good.")

user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/wtthll.gif",
                        title: "Confused",
                        summary: "What's going on?.")

user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/ew.gif",
                         title: "Ew",
                         summary: "Late Night with JF.")

user.gifs << Gif.create(image_file: "https://d324imu86q1bqn.cloudfront.net/uploads/asset/attachment/2871027/ello-optimized-2d31f26c.gif",
                        title: "Blue City",
                        summary: "Cool city illustration")

user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/lbgo.gif",
                        title: "Ashton Kutcher",
                        summary: "Investor/Actor.")

user.gifs << Gif.create(image_file: "https://d324imu86q1bqn.cloudfront.net/uploads/asset/attachment/2890961/ello-optimized-e6f584b6.gif",
                        title: "DJ Cat",
                        summary: "This cat rocks.")


user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/ashsh.gif",
                        title: "Silence",
                        summary: "The silver rule.")


user.gifs << Gif.create(image_file: "http://www.reactiongifs.com/r/mrca.gif",
                        title: "America",
                        summary: "America is awesome.")
