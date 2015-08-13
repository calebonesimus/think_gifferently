# These are all being created without users for now

user = User.create(fullname: "Test User",
                   username: "testuser",
                   email: "test@user.com",
                   password: "password",
                   password_confirmation: "password")

user.gifs << Gif.create(image_file: "american.gif",
                        title: "American",
                        summary: "America is awesome.")

user.gifs << Gif.create(image_file: "building.gif",
                        title: "Cool Building",
                        summary: "Interesting illustration of a building.")

user.gifs << Gif.create(image_file: "chaos.gif",
                        title: "Cloud Chaos",
                        summary: "This thing is nuts.")


user.gifs << Gif.create(image_file: "confused.gif",
                        title: "Confused",
                        summary: "What's going on?.")

user.gifs << Gif.create(image_file: "ew.gif",
                         title: "Ew",
                         summary: "Late Night with JF.")

user.gifs << Gif.create(image_file: "jump_rope.gif",
                        title: "Jump Rope",
                        summary: "Creative jump roper.")

user.gifs << Gif.create(image_file: "kutcher.gif",
                        title: "Ashton Kutcher",
                        summary: "Investor/Actor.")

user.gifs << Gif.create(image_file: "record_cat.gif",
                        title: "DJ Cat",
                        summary: "This cat rocks.")


user.gifs << Gif.create(image_file: "silence.gif",
                        title: "Silence",
                        summary: "The silver rule.")


user.gifs << Gif.create(image_file: "study.gif",
                        title: "Studying",
                        summary: "WTF is going on here.")
