class CreateTagsPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_pictures do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :picture, index: true
      t.timestamps
    end
  end
end
