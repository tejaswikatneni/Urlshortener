FactoryGirl.define do

	#  for valid attributes
	factory :short, :class => 'Short' do
		long 		'http://www.google.com'
		desc 		'google'
	end
	
	# for invalid attributes 
	factory :invalid_short, :class => 'Short' do
		long 		'google.com'
		desc 		'google'
	end
end