class TariffUtility < ActiveRecord::Base
	has_many :tariff_territory
	validates :name, presence: true
	validates :state, presence: true, length: { maximum: 2 }

	# Pulls the right territory based on a submitted zip code
	def self.territory(zip)
		
		@zip_code_id = TariffZipCode.find_by(zip_code: zip).id
		@territory_id = TariffTerritoryZipCodeRel.find_by(tariff_zip_code_id: @zip_code_id).tariff_territory_id
		@territory = TariffTerritory.find_by(id: @territory_id).name
	end

	# Pulls the right utility based on a submitted zip code
	def self.utility(zip)
		@zip_code_id = TariffZipCode.find_by(zip_code: zip).id
		@territory_id = TariffTerritoryZipCodeRel.find_by(tariff_zip_code_id: @zip_code_id).tariff_territory_id
		@utility = TariffUtility.find_by(id: TariffTerritory.find_by(id: @territory_id)).name
	end

end
