require 'httparty'
require_relative '../model/detail'
require 'date'

RSpec.describe Detail do
	describe '#get_people' do
		it 'creates an array of hashes from the inputs provided. Gender is specified in full word form and date is created as an object.' do
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
	
end