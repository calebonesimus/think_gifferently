class Gif < ActiveRecord::Base
  belongs_to :user
  validates_format_of :gif_url, :with => /(.+)\.gif/, :on => :create
  acts_as_votable
  acts_as_taggable

  mount_uploader :local_gif, GifUploader
end
