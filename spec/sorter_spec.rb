require_relative '../model/sorter'
require_relative '../model/detail'
require 'date'


RSpec.describe Sorter do
	let(:sort) { Sorter.new }
	let(:detail) { Detail.new }
	let(:details) {detail.get_people}

	describe '#sort_by_gender_lname' do
		it 'sorts array by gender then by last name ascending' do
			expected_sorted_details = [{"l_name"=>"Hingis", "f_name"=>"Martina", "mid_initial"=>"M", "gender"=>"Female", "fav_color"=>"Green", "birth_date"=>Date.strptime('04-02-1979','%m-%d-%Y')},{"l_name"=>"Kelly", "f_name"=>"Sue", "gender"=>"Female", "fav_color"=>"Pink", "birth_date"=>Date.strptime('07-12-1959','%m-%d-%Y')},{"l_name"=>"Kournikova", "f_name"=>"Anna", "mid_initial"=>"F", "gender"=>"Female", "fav_color"=>"Red", "birth_date"=>Date.strptime('06-03-1975','%m-%d-%Y')}, {"l_name"=>"Seles", "f_name"=>"Monica", "mid_initial"=>"H", "gender"=>"Female", "fav_color"=>"Black", "birth_date"=>Date.strptime('12-02-1973','%m-%d-%Y')},{"l_name"=>"Abercrombie", "f_name"=>"Neil", "gender"=>"Male", "fav_color"=>"Tan", "birth_date"=>Date.strptime('02-13-1943','%m-%d-%Y')},{"l_name"=>"Bishop", "f_name"=>"Timothy", "gender"=>"Male", "fav_color"=>"Yellow", "birth_date"=>Date.strptime('04-23-1967','%m-%d-%Y')},{"l_name"=>"Bonk", "f_name"=>"Radek", "mid_initial"=>"S", "gender"=>"Male", "fav_color"=>"Green", "birth_date"=>Date.strptime('06-03-1975','%m-%d-%Y')},{"l_name"=>"Bouillon", "f_name"=>"Francis", "mid_initial"=>"G", "gender"=>"Male", "fav_color"=>"Blue", "birth_date"=>Date.strptime('06-03-1975','%m-%d-%Y')},{"l_name"=>"Smith", "f_name"=>"Steve", "mid_initial"=>"D", "gender"=>"Male", "fav_color"=>"Red", "birth_date"=>Date.strptime('03-03-1985','%m-%d-%Y')}]
			expect(sort.sort_by_gender_lname(details)).to eq expected_sorted_details
		end
	end

	describe '#sort_by_bday_lname' do
		it 'sorts array by birth date then by last name ascending' do
			expect(sort.sort_by_bday_lname(details)).to eq details.sort_by{|detail| [detail["birth_date"], detail["l_name"]]}
		end
	end

	describe '#sort_by_lname' do
		it 'sorts by last name in descending order' do
			expect(sort.sort_by_lname(details)).to eq details.sort_by{|detail| [detail["l_name"]]}.reverse
		end
	end
	
end 



