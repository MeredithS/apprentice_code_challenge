require_relative 'model/detail'
require_relative 'model/sorter'

d = Detail.new
details = d.get_people
sort = Sorter.new

puts "Output 1:"
sort.sort_by_gender_lname(details)

puts "Output 2:"
sort.sort_by_bday_lname(details)

puts"Output 3:"
sort.sort_by_lname(details)