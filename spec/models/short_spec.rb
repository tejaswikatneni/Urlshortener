require 'rails_helper'

RSpec.describe Short, type: :model do

	describe '- Validations for generating URL Shortener -' do

		it 'long should be present' do
			is_expected.to validate_presence_of(:long)
		end

		it 'long should be present' do
			should allow_value("http://www.bar.foo").for(:long)
		end
	end
end