class TariffSeason < ActiveRecord::Base
	belongs_to :tariff_territory
	has_many :tariff_tou,
				foreign_key: "tariff_tou_id"
	validates :tariff_territory_id, presence: true

	def self.season(date, zip)
		@tariff_territory_id = TariffTerritory.territory_id(zip)
		@season = TariffSeason.find_by(id: 4).season_type
		@season = TariffSeason.find_by(tariff_territory_id: @tariff_territory_id).season_type
		@season = TariffSeason.find_by(tariff_territory_id: @tariff_territory_id, start_date: date).season_type

		#not working!
		#@season = TariffSeason.where('id = ?', 1).season_type
		#@season = TariffSeason.where(tariff_territory_id: 1).season_type
		#@season = TariffSeason.where(id: 1).season_type
		#@season = TariffSeason.where("tariff_territory_id = :territory_id AND id = season_id", territory_id: @tariff_territory_id, season_id: 1).season_type
		#@season = TariffSeason.where(season_id: 1).season_type
		
		#@season = TariffSeason.("tariff_territory_id = ?", @tariff_territory_id).season_type


	end


end

