class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :image_file
      t.integer :user_id
      t.string :summary
      t.string :title

      t.timestamps null: false
    end
  end
end
