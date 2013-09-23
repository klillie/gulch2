class CreateBillGroups < ActiveRecord::Migration
  def change
    create_table :bill_groups do |t|
      t.string :name
      t.integer :order
      t.integer :tariff_line_item_id
      t.integer :tariff_tariff_id

      t.timestamps
    end
  end
end
