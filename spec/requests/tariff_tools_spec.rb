require 'spec_helper'

describe "Tariff Tools" do
  
	describe "Home page" do

		it "should have the content 'Bill Comparison Demo'" do
			visit '/tariff_tools/home'
			expect(page).to have_content('Bill Comparison Demo')
		end
	end
end
