require 'pry'
require 'httparty'

class Person

	def initialize

	end

	def get_people
		people = []
		# urls = ["comma.txt","pipe.txt","space.txt"]
		# urls.each {|url|
		response = HTTParty.get("http://www.cyrusinnovation.com/wp-content/uploads/2013/11/comma.txt")
		response_array = response.split(/\n/)
		response_array.each{|index| 
			new_array = index.split(", ")
			person_info = middle_initial?(new_array)
			people << person_info}
		return people
	# } 

	end

	def middle_initial?(arr)
		if arr.length == 5
			a_person = ["l_name","f_name","gender","fav_color", "birth_date"]
		else
			a_person = ["l_name","f_name","mid_initial","gender","fav_color", "birth_date"]
		end
		a_person.zip(arr).to_h
		# return person_info
	end

end

# binding.pry