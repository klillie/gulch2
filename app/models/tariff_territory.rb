class TariffTerritory < ActiveRecord::Base
	belongs_to :tariff_utility
	has_many :tariff_territory_zip_code_rel,
				foreign_key: "tariff_territory_id"
	validates :tariff_utility_id, presence: true
end
