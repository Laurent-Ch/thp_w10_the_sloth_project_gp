class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :body
      t.integer :price
      t.string :image_url
      t.string :author
      t.timestamps
    end
  end
end
