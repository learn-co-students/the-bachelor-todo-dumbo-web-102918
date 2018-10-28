require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
    if info["status"] == "Winner"

      name = info["name"].split
      return name[0]
    end
  end #data
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season,contestants|
    contestants.each do |info|
      return info["name"] if info["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end #data
  return count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_count = 0
  data[season].each do |info|
    age_count += (info["age"].to_f).round
  end
  age_count/(data[season].count).ceil
end
