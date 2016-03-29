require_relative 'detail'
# require 'person'
require 'pry'
require 'date'

class Sorter
	def initialize
	end

	def sort_by_gender_lname(details_array)
		sorted_details = details_array.sort_by{|detail| [detail["gender"], detail["l_name"]]}
		sorted_details.each{|detail| puts detail["l_name"]+" "+detail["f_name"]+" "+detail["gender"]+" "+detail["birth_date"].mon.to_s+"/"+detail["birth_date"].mday.to_s+"/"+detail["birth_date"].year.to_s+" "+detail["fav_color"]+"\n"}
	end

	def sort_by_bday_lname(details_array)
		sorted_details = details_array.sort_by{|detail| [detail["birth_date"], detail["l_name"]]}
		return sorted_details.each{|detail| puts detail["l_name"]+" "+detail["f_name"]+" "+detail["gender"]+" "+detail["birth_date"].mon.to_s+"/"+detail["birth_date"].mday.to_s+"/"+detail["birth_date"].year.to_s+" "+detail["fav_color"]+"\n"}
	end

	def sort_by_lname(details_array)
		sorted_details = details_array.sort_by{|detail| [detail["l_name"]]}.reverse
		return sorted_details.each{|detail| puts detail["l_name"]+" "+detail["f_name"]+" "+detail["gender"]+" "+detail["birth_date"].mon.to_s+"/"+detail["birth_date"].mday.to_s+"/"+detail["birth_date"].year.to_s+" "+detail["fav_color"]+"\n"}
	end
end

# binding.pry
