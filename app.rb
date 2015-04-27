require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/Triangle')

get('/') do
  erb(:index)
end

get('/triangle') do
  side1_string = params.fetch('side1')
  side1 = side1_string.to_i()
  side2_string = params.fetch('side2')
  side2 = side2_string.to_i()
  side3_string = params.fetch('side3')
  side3 = side3_string.to_i()
  @triangle = Triangle.new(side1, side2, side3)
  erb(:triangle)
end
