require 'restforce'

client = Restforce.new :host => ENV['WEWORK_LOGIN_URL'],
	:username 			=> ENV['WEWORK_SF_USERNAME'],
  :password       => ENV['WEWORK_SF_PASSWORD'],
  :security_token => ENV['WEWORK_SF_TOKEN'],
  :client_id      => ENV['WEWORK_SF_CLIENT_ID'], #this will be different in production
  :client_secret  => ENV['WEWORK_SF_CLIENT_SECRET'] #this will be different in production
  

result = client.post '/services/apexrest/Tour' do |req|
	req.body = { 
		body: {
			first_name: 'Rod',
			last_name: 'Sonss',
      email: 'sons41344@wework.com',
			phone: '6465680162',
		  company_name: 'two',
		  tour_uuid: '0d78376e-e792-11e5-a77e-22000b2885a7',
		  tour_building_uuid: 'a5a2d700-3c58-0132-d377-2a4ce10bcd85',
		  tour_date: '2016-05-11',
		  tour_time: '9:03AM',
		  lead_source: 'SpaceStation Mobile'
		}
	}
end

puts result.body.success
puts result.body.message
