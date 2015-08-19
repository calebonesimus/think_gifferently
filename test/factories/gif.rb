FactoryGirl.define do
  factory :gif do
    gif_url: "http://i.giphy.com/eHJqVehXNkGNG.gif"
    user: build(:user)
  end
end
