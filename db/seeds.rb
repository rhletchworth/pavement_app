# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    @event = HTTParty.get('http://api.songkick.com/api/3.0/metro_areas/{17913-us-raleigh}/calendar.json?apikey={mw2HcD3yWiwqM368}')

    @events_in_area = []

    @event.each do |event|
      @events_in_area.push(event)
    end