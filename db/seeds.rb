# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.new
# user.email = 'test@test.com'
# user.encrypted_password = '101689'
# user.password_confirmation = '101689'
# user.save!
Branch.delete_all
User.delete_all

Branch.create([
                { name: 'San Miguel 111', address: 'Lavalle 123' },
                { name: 'San Miguel 222', address: 'Colon 123' },
                { name: 'San Miguel 333', address: 'Roca 123' }
              ])
User.create([
              { email: 'admin@email.com', password: '123456', password_confirmation: '123456', name: 'Jhon',
                lastname: 'Doe', role: :admin },
              { email: 'employee@email.com', password: '123456', password_confirmation: '123456',
                name: 'Clark', lastname: 'Kent', role: :employee }
            ])
puts 'Usuarios creados'
