def get_first_name_of_season_winner(data, season)
  data[season].each do |profile|
    profile.each do |key, val|
      if val == "Winner"
        return profile["name"].split.first
      end 
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |person|
      person.each do |info, detail|
        if detail == occupation
          return person["name"]
        end
      end
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, people|
    people.each do |person|
      person.each do |info, detail|
        if detail == hometown 
          counter += 1
        end 
      end 
    end 
  end 
  counter
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |person|
      person.each do |info, detail|
        if detail == hometown
          return person["occupation"]
        end
      end
    end 
  end 
end

def get_average_age_for_season(data, season)
  counter = 0
  sum = 0
  data[season].each do |profile|
    profile.each do |key, val|
      if key == "age"
        counter += 1
        sum += val.to_f
      end
    end
  end 
  avg = (sum / counter).round
end