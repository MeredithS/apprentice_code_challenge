require 'pry'
require 'httparty'
require 'date'

class Detail

	def initialize
	end

	def get_people
		people = []
		urls = ["comma.txt","pipe.txt","space.txt"]
		urls.each{|url|
			response = HTTParty.get("http://www.cyrusinnovation.com/wp-content/uploads/2013/11/#{url}")
			response_array = response.split(/\n/)
				response_array.each{|index|
					if url == "comma.txt"
						new_array = index.split(", ")
						person_info = middle_initial?(new_array)
						person_info["birth_date"] = Date.strptime(person_info["birth_date"], '%m/%d/%Y')
						people << person_info
					elsif url == "pipe.txt"
						new_array = index.split(" | ")
						person_info = middle_initial?(new_array)
						person_info = fix_gender(person_info)
						person_info["birth_date"] = Date.strptime(person_info["birth_date"], '%m-%d-%Y')
						people << person_info
					elsif url =="space.txt"
						new_array = index.split(" ")
						new_array[-1],new_array[-2] = new_array[-2], new_array[-1]
						person_details = middle_initial?(new_array)
						person_info = fix_gender(person_details)
						person_info["birth_date"] = Date.strptime(person_info["birth_date"], '%m-%d-%Y')
						people << person_info
					end
				}
		} 

		return people

	end

	def middle_initial?(arr)
		if arr.length == 5
			a_person = ["l_name","f_name","gender","fav_color", "birth_date"]
		else
			a_person = ["l_name","f_name","mid_initial","gender","fav_color", "birth_date"]
		end
		a_person.zip(arr).to_h
	end
end

def fix_gender(arr)
	if arr["gender"] == "M"
		arr["gender"] = "Male"
		return arr
	elsif arr["gender"] =="F"
		arr["gender"] = "Female"
		return arr
	end
end
		

# binding.pry