
testuser = User.create(fullname: "Test User",
                        username: "testuser",
                        email: "test@user.com",
                        password: "password",
                        password_confirmation: "password")

seconduser = User.create(fullname: "Second User",
                          username: "seconduser",
                          email: "second@user.com",
                          password: "password",
                          password_confirmation: "password")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://28.media.tumblr.com/tumblr_la31gxK12n1qci59go1_400.gif",
                             tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m70kk09Bjh1r302kmo1_500.gif",
                            tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://24.media.tumblr.com/tumblr_lxngenlKFP1qfjjglo1_250.gif",
                             tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_lzhyfx6Ig91r63pb5o1_250.gif",
                            tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://29.media.tumblr.com/tumblr_lzrj9hSiKG1qi0kfro1_500.gif",
                             tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m3ir6aJp4p1r73wdao1_500.gif",
                            tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://25.media.tumblr.com/tumblr_lmighzVWof1qczr0io1_500.gif",
                           tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m07z77P04Y1rn38bfo1_250.gif",
                            tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://24.media.tumblr.com/tumblr_lo295bUQHV1qzft56o1_400.gif",
                           tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m5migd1oHt1rybm6ho1_250.gif",
                            tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://28.media.tumblr.com/tumblr_la31gxK12n1qci59go1_400.gif",
                             tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m70kk09Bjh1r302kmo1_500.gif",
                            tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://24.media.tumblr.com/tumblr_lxngenlKFP1qfjjglo1_250.gif",
                             tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_lzhyfx6Ig91r63pb5o1_250.gif",
                            tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://29.media.tumblr.com/tumblr_lzrj9hSiKG1qi0kfro1_500.gif",
                             tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m3ir6aJp4p1r73wdao1_500.gif",
                            tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://25.media.tumblr.com/tumblr_lmighzVWof1qczr0io1_500.gif",
                           tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m07z77P04Y1rn38bfo1_250.gif",
                            tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://24.media.tumblr.com/tumblr_lo295bUQHV1qzft56o1_400.gif",
                           tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m5migd1oHt1rybm6ho1_250.gif",
                            tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://28.media.tumblr.com/tumblr_la31gxK12n1qci59go1_400.gif",
                             tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m70kk09Bjh1r302kmo1_500.gif",
                            tag_list: "funny")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://24.media.tumblr.com/tumblr_lxngenlKFP1qfjjglo1_250.gif",
                             tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_lzhyfx6Ig91r63pb5o1_250.gif",
                            tag_list: "awesome")

testuser.gifs << Gif.create(title: "Random Gif",
                             gif_url: "http://29.media.tumblr.com/tumblr_lzrj9hSiKG1qi0kfro1_500.gif",
                             tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m3ir6aJp4p1r73wdao1_500.gif",
                            tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://25.media.tumblr.com/tumblr_lmighzVWof1qczr0io1_500.gif",
                           tag_list: "awesome")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://25.media.tumblr.com/tumblr_m07z77P04Y1rn38bfo1_250.gif",
                            tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                           gif_url: "http://24.media.tumblr.com/tumblr_lo295bUQHV1qzft56o1_400.gif",
                           tag_list: "funny")

seconduser.gifs << Gif.create(title: "Random Gif",
                            gif_url: "http://24.media.tumblr.com/tumblr_m5migd1oHt1rybm6ho1_250.gif",
                            tag_list: "funny")
