# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
	User.create(username: Faker::Name.unique.middle_name, full_name: Faker::Name.unique.name)
end

	@userz = User.all

	@userz.each do |user|
		user.rants.create(content: Faker::Lorem.paragraph(sentence_count: 3))
	end
