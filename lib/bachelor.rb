require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |player_hash|
    #binding.pry 
      if player_hash["status"] == "Winner"
        return player_hash["name"].split.first
      end 
    end 
end

def get_contestant_name(data, occupation)
  data.each do |season , player_hashes|
    player_hashes.each do |player_hash|
      if player_hash["occupation"] == occupation
        return player_hash["name"]
      end 
    end 
  end
end

def count_contestants_by_hometown(data, hometown)
  value = 0 
  data.each do |season , player_hashes|
    player_hashes.each do |player_hash|
      if player_hash["hometown"] ==  hometown
        value += 1 
      end 
    end
  end
  value
end

def get_occupation(data, hometown)
  data.each do |season , player_hashes|
    player_hashes.each do |player_hash|
      if player_hash["hometown"] == hometown
        return player_hash["occupation"]
      end 
    end 
  end
end

def get_average_age_for_season(data, season)
  value= []
 data[season].each do |player_hash|
   value << player_hash["age"].to_f
 end
 sum=0.0 
 value.each do |number|
   sum += number
 end 
 sum= sum / value.length
 sum.round
end
