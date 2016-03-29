require 'httparty'
require_relative '../model/detail'
require 'date'
require 'pry'

RSpec.describe Detail do
	# describe 'middle_initial?'do
	# 	before(:each) do
	# 		no_mid_initial = HTTParty.get("http://www.cyrusinnovation.com/wp-content/uploads/2013/11/comma.txt")
	# 		@no_mid_initial_array = no_mid_initial.split(", ")
	# 		mid_initial= HTTParty.get("http://www.cyrusinnovation.com/wp-content/uploads/2013/11/pipe.txt")
	# 		@mid_initial_array = mid_initial.split(" | ")
	# 	end	

	# 	describe 'for responses that have a length of 5' do
	# 		it 'should create a hash with no middle initial key value pair' do
	# 			expect(middle_initial?(@no_mid_initial_array)).to eq {"l_name"=>"Abercrombie", "f_name"=>"Neil", "gender"=>"Male", "fav_color"=>"Tan", "birth_date"=>"2/13/1943"}
	# 		end
	# 	end

	# 	describe 'for responses that have a length of 6' do
	# 		it 'should create a hash with a middle initial key value pair'do
	# 			expect(middle_initial?(@mid_initial_array)).to eq {"l_name"=>"Smith", "f_name"=>"Steve", "mid_initial"=>"D", "gender"=>"M", "fav_color"=>"Red", "birth_date"=>"3-3-1985"}
	# 			end
	# 		end
	# 	end
	# end

	describe '#get_people' do
		it 'creates an array of hashes from the text files provided. Gender is specified in full word form and date is converted into an object.' do
			d = Detail.new
			expect(d.get_people).to eq [
				{"l_name"=>"Abercrombie", "f_name"=>"Neil", "gender"=>"Male", "fav_color"=>"Tan", "birth_date"=>Date.strptime('2/13/1943', '%m/%d/%Y')},
				{"l_name"=>"Bishop", "f_name"=>"Timothy", "gender"=>"Male", "fav_color"=>"Yellow", "birth_date"=>Date.strptime('4/23/1967', '%m/%d/%Y')},
				{"l_name"=>"Kelly","f_name"=>"Sue", "gender"=>"Female", "fav_color"=>"Pink", "birth_date"=>Date.strptime('7/12/1959', '%m/%d/%Y')},
				{"l_name"=>"Smith","f_name"=>"Steve","mid_initial"=>"D","gender"=>"Male","fav_color"=>"Red","birth_date"=>Date.strptime('3-3-1985', '%m-%d-%Y')},
				{"l_name"=>"Bonk","f_name"=>"Radek","mid_initial"=>"S","gender"=>"Male","fav_color"=>"Green","birth_date"=>Date.strptime('6-3-1975', '%m-%d-%Y')},
				{"l_name"=>"Bouillon","f_name"=>"Francis","mid_initial"=>"G","gender"=>"Male","fav_color"=>"Blue","birth_date"=>Date.strptime('6-3-1975', '%m-%d-%Y')},
				{"l_name"=>"Kournikova","f_name"=>"Anna","mid_initial"=>"F","gender"=>"Female","fav_color"=>"Red","birth_date"=>Date.strptime('6-3-1975', '%m-%d-%Y')},
				{"l_name"=>"Hingis","f_name"=>"Martina","mid_initial"=>"M","gender"=>"Female","fav_color"=>"Green","birth_date"=>Date.strptime('4-2-1979', '%m-%d-%Y')},
				{"l_name"=>"Seles","f_name"=>"Monica","mid_initial"=>"H","gender"=>"Female","fav_color"=>"Black","birth_date"=>Date.strptime('12-2-1973', '%m-%d-%Y')}]
		end
	end

end

