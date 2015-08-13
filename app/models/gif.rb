class Gif < ActiveRecord::Base
  validates_format_of :gif,
                      :with => /\.(gif)\b/,
                      :message => "Your image must be a gif."
end
