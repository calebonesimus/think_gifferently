class AddLocalGifToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :local_gif, :string
    
    rename_column :gifs, :image_file, :gif_url
  end
end
