class Gif < ActiveRecord::Base
  belongs_to :user
  validates_format_of :image_file, :with => /(.+)\.gif/, :on => :create
  acts_as_votable
  acts_as_taggable
end
