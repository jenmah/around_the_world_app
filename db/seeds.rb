# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photograph.delete_all

photos = [
		{
			name: 'London',
			latitude: 51.5085300,
			longitude: -0.1257400,
			image_path: '/images/london.jpg'
		},
		{
			name: 'Munich',
			latitude: 48.139127,
			longitude: 11.580186,
			image_path: '/images/munich.jpg'
		}
]

photos.each do |photo|
	Photograph.create(photo)
end