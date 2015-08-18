require 'test_helper'

class GifTest < ActiveSupport::TestCase

  should belong_to(:user)
  should have_many(:taggings)

  setup do
    @gif = build(:gif)
  end

  test "gif extension validation" do
    gif = Gif.new(gif_url: "http://www.giphy.com/hasdjhflkj.png")
    assert_not gif.save, "Saved something that isn't a gif."
  end

end
