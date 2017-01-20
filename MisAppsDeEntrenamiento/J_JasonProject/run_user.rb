require_relative 'user.rb'

user = User.new('juan', 'juan@here.com')
puts user.inspect
user.save