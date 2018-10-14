require "pry"

def get_first_name_of_season_winner(data, season)
 
result = ""
  data[season].each do |hash|
    if hash["status"] == "Winner"
      result = hash["name"]
      break
    end
  end
  result[0...result.index(" ")]
end

def get_contestant_name(data, occupation)
  result = ""
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation
        result = hash["name"]
        break
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |hash|
    count += 1 if hash["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  result = ""
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown
        result = hash["occupation"]
        break
      end
    end
  end
  result
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_people = 0
  
  data[season].each do |hash|
     total_age += hash["age"].to_i
     total_people += 1
  end
    (total_age /(total_people).to_f).round
end
