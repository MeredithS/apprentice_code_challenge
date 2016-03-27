require_relative '../model/sorter'
require_relative '../model/person'
require 'httparty'

RSpec.describe Sorter do
	it '.greeting' do
		s1 = Sorter.new
		expect(Sorter.greeting).to eq "Hello"
	end
end

RSpec.describe Person do
	it '.get_people' do
		p = Person.new
		expect(p.get_people).to eq [
			{"l_name"=>"Abercrombie", "f_name"=>"Neil", "gender"=>"Male", "fav_color"=>"Tan", "birth_date"=>"2/13/1943"},
			{"l_name"=>"Bishop", "f_name"=>"Timothy", "gender"=>"Male", "fav_color"=>"Yellow", "birth_date"=>"4/23/1967"},
			{"l_name"=>"Kelly","f_name"=>"Sue", "gender"=>"Female", "fav_color"=>"Pink", "birth_date"=>"7/12/1959"}]
	end
end

