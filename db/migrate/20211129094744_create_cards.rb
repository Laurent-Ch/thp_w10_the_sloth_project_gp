class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :user, index: true
      t.belongs_to :picture, index: true
      t.integer :quantity, index: true, default: 1

      t.timestamps
    end
  end
end
