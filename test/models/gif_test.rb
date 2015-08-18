require 'test_helper'

class GifTest < ActiveSupport::TestCase

  should belong_to(:user)
  should have_many(:taggings)
  
  # test "gif_url extension validation" do
  #   gif = Gif.new(gif_url: "http://www.giphy.com/hasdjhflkj.png")
  #   assert_not gif.save, "Saved a url that isn't a gif."
  # end

  # test "local_gif extention validation" do
  #   gif = Gif.new(local_gif: "something.pdf")
  #   assert_not gif.save, "Saved a file that isn't a gif"
  # end

end
