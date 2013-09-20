class CreateTariffTerritoryZipCodeRelationships < ActiveRecord::Migration
  def change
    create_table :tariff_territory_zip_code_relationships do |t|
      t.integer :tariff_territory_id
      t.integer :tariff_zip_code_id

      t.timestamps
    end
    add_index :tariff_territory_zip_code_relationships, :tariff_territory_id
    add_index :tariff_territory_zip_code_relationships, :tariff_zip_code_id
    add_index :tariff_territory_zip_code_relationships, [:tariff_territory_id, :tariff_zip_code_id], unique: true
  end
end
