require 'soda/client'
client = SODA::Client.new( { :domain => "data.cityofnewyork.us", :app_token => "R3U5um9w7ZSYcmKF6uwZjt2O5"})
response = client.get("2zzj-3hqt")
response.each do |record|
LicenseNumber.find_or_create_by(license_number: response[0].license_number)
end







#  #<Hashie::Mash address_street_name="WILLIAMSBRIDGE ROAD" address_zip_code="10469" entity_name="DOW, DANNY H" entity_type="LAUNDRY" license_number="495191" location_1=#<Hashie::Mash human_address="{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}" latitude="40.86225398077611" longitude="-73.85769114807104" needs_recoding=false> street_address="2490 WILLIAMSBRIDGE ROAD" telephone_number="9146936015">
# irb(main):029:0> response[0].location_1
# => #<Hashie::Mash human_address="{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}" latitude="40.86225398077611" longitude="-73.85769114807104" needs_recoding=false>
# irb(main):030:0> response[0].location_1.human_address
# => "{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}"
# irb(main):031:0> response[0].location_1.human_address.class
# => String
# irb(main):032:0> response[0].location_1.human_address
# => "{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}"
# irb(main):033:0> require 'json'
# => false
# irb(main):034:0> JSON
# => JSON
# irb(main):035:0> address = response[0].location_1.human_address
# => "{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}"
# irb(main):036:0> JSON.parse(address)
# => {"address"=>"2490 WILLIAMSBRIDGE ROAD", "city"=>"BRONX", "state"=>"NY", "zip"=>"10469"}
# irb(main):037:0> address = response[0]
# => #<Hashie::Mash address_street_name="WILLIAMSBRIDGE ROAD" address_zip_code="10469" entity_name="DOW, DANNY H" entity_type="LAUNDRY" license_number="495191" location_1=#<Hashie::Mash human_address="{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}" latitude="40.86225398077611" longitude="-73.85769114807104" needs_recoding=false> street_address="2490 WILLIAMSBRIDGE ROAD" telephone_number="9146936015">
# irb(main):038:0> address = response[0].location_1
# => #<Hashie::Mash human_address="{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}" latitude="40.86225398077611" longitude="-73.85769114807104" needs_recoding=false>
# irb(main):039:0> address = response[0].location_1.human_address
# => "{\"address\":\"2490 WILLIAMSBRIDGE ROAD\",\"city\":\"BRONX\",\"state\":\"NY\",\"zip\":\"10469\"}"
# irb(main):040:0> JSON.parse(address)
# => {"address"=>"2490 WILLIAMSBRIDGE ROAD", "city"=>"BRONX", "state"=>"NY", "zip"=>"10469"}
# irb(main):041:0> aa = JSON.parse(address)
# => {"address"=>"2490 WILLIAMSBRIDGE ROAD", "city"=>"BRONX", "state"=>"NY", "zip"=>"10469"}
# irb(main):042:0> a.city
# NameError: undefined local variable or method `a' for main:Object
#   from (irb):42
#   from /Users/apprentice/.rbenv/versions/2.0.0-p353/bin/irb:12:in `<main>'
# irb(main):043:0> a["city"]
# NameError: undefined local variable or method `a' for main:Object
#   from (irb):43
#   from /Users/apprentice/.rbenv/versions/2.0.0-p353/bin/irb:12:in `<main>'
# irb(main):044:0> aa["city"]
# => "BRONX"
# irb(main):045:0> aa.city
