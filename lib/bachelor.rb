require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |season_num, ppl_arr|
    if season_num == season 
      ppl_arr.each do |person_hash|

        if person_hash["status"] == "Winner"
          return person_hash["name"].split(" ").first
        end
    end
  end
  end
end

def get_contestant_name(data, occupation)
    data.each do |season_num, ppl_arr|
      ppl_arr.each do |person_hash|

        if person_hash["occupation"] == occupation
          return person_hash["name"]
  end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season_num, ppl_arr|
    ppl_arr.each do |person_hash|

      if person_hash["hometown"] == hometown
        count += 1 
  end
  end
end
count
end

def get_occupation(data, hometown)
  data.each do |season_num, ppl_arr|
    ppl_arr.each do |person_hash|

      if person_hash["hometown"] == hometown
        return person_hash["occupation"] 
  end
  end
end
end

def get_average_age_for_season(data, season)
  sum = 0 
  ppl = 0
  data.each do |season_num, ppl_arr|
    if season_num == season 
      ppl_arr.each do |person_hash|

       sum += person_hash["age"].to_i
       ppl += 1
      
        
    end
  end
end

  (sum / ppl.to_f).round 
end
