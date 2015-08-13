class Gif < ActiveRecord::Base
  belongs_to :user

  # validates_format_of :gif,
  #                     :with => /\.(gif)\b/,
  #                     :message => "Your image must be a gif."
end
