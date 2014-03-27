# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(:title => 'Spoko loko',
:description => %{<p>
Lorem ipusm lorem ipusm 
</p>},
:image_url => '/images/ruby.jpg',
:price => 20.50)

Order.transaction do
(1..100).each do |i|
Order.create(:name => "Customer #{i}", :address => "#{i} Main Street",
:email => "customer-#{i}@example.com", :pay_type => "Check")
	end
end
