require 'pry'

def get_first_name_of_season_winner(data, season)
  arr = []
  
  data[season].each do |hash|
    hash.each do |info, specifics|
    if hash["status"] == "Winner"
      arr << specifics if info == "name" 
      end
    end
  end
  return arr.join.split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |season, hash_arr|
    hash_arr.each do |hash|
      hash.each do |info, specifics|
        if hash["occupation"] == occupation 
          return specifics if info == "name"
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = Hash.new(0) 
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
