require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many(:gifs)
  should_not allow_value("test@user").for(:email)

end
