# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = Fabricate(:user,
                 email: 'dev@wearefuturegov.com',
                 password: 'Password123',
                 password_confirmation: 'Password123')
user.confirm

interventions = YAML.safe_load(File.open(Rails.root.join('db', 'seed_data', 'interventions.yml')))

interventions.each do |i|
  Intervention.create(i)
end
