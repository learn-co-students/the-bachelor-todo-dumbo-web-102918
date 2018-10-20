require "pry"

def get_first_name_of_season_winner(data, season)
  full_name = ""
  data[season].each do |person_hash|
    if person_hash["status"] == "Winner"
      full_name = person_hash["name"]
    end
  end
  array = full_name.split(" ")
  return array[0]
end

def get_contestant_name(data, occupation)
  
    data.each do |key,season|
      season.each do |hash|
        
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
  
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key,season|
      season.each do |hash|
        
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |key,season|
      season.each do |hash|
        
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
      total = 0
      counter = 0
      data[season].each do |hash|
        total += hash["age"].to_f
        counter += 1
      end
    
      return (total/counter).round()
end
