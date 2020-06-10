# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Project: name views account_id date
# user: user_name password
#shape value1-4,fill, stroke, strokeWeight, project_id
require 'rubygems'
require 'faker'
Project.destroy_all()
Shape.destroy_all()
User.destroy_all()

5.times {User.create(user_name: Faker::Name.first_name, password: "123")}
20.times{Project.create(name:Faker::Space.unique.constellation, views: 0, date: Date.new(2019, rand(1..12), rand(1..28)), user_id: User.all.sample.id)}
100.times{Shape.create(value1: rand(0..450), value2: rand(0..600), value3: rand(10..80), value4: rand(10..80), fill: "(#{rand(0..255)},#{rand(0..255)},#{rand(0..255)})", stroke: "no", stroke_weight:1, project_id: Project.all.sample.id,render_number: 0 )}


