class CreatePicturesOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures_orders do |t|
      t.belongs_to :order, index: true
      t.belongs_to :picture, index: true
      t.timestamps
    end
  end
end
