def get_first_name_of_season_winner(data, season)
  # code here
#puts data
#puts data.first
#you dont loop for hash
#puts data[season]
#loop thru array
#save this in variable because its the right season before we get to the array which we need to loop thru
  right_season = data[season]
    candidate  = right_season.select do |element|
    #select selects hash if last line is true
    #if element["status"] == "Winner", don't need the word if
       element["status"] == "Winner"
      #this will return right object so save the entire value of select into a variable
     end
     #select returns an array so I had to index into array
     full_name = candidate[0]["name"]
     first_name, last_name = full_name.split
     first_name
end

def get_contestant_name(data, occupation)
  #here I have to loop thru keys because I don't know
  #which one is right one
  candidate_name = ""
  data.each do |key, season_list|
    #gets season info for each seasion
    season_list.select do |person|
      #loop thru each of these get season name
      #and get array of contestants
      #but can capture the candidate_name below
        if person["occupation"] == occupation
          #array.push(person["name"])
          candidate_name = person["name"]
        end
    end
  end

  candidate_name
end

def count_contestants_by_hometown(data, hometown)
  #here I have to loop thru keys because I don't know which one is right one
  residents = 0
  data.each do |key, season_list|
    #gets season info for each seasion
    season_list.select do |person|
      #loop thru each of these get season name and get array of contestants
      #but can capture the candidate_name below
        if person["hometown"] == hometown
          #array.push(person["name"])
          residents+= 1
        end
     end
  end
  residents
end

def get_occupation(data, hometown)
  #here I have to loop thru keys because I don't know which one is right one
  candidate_occupation = ""
  data.each do |key, season_list|
    #gets season info for each seasion
    season_list.find do |person|
      #loop thru each of these get season name and get array of contestants
      #but can capture the candidate_name below
        if person["hometown"] == hometown
          candidate_occupation = person["occupation"]
        end
     end
  end
candidate_occupation
end



  def ages_of_contestants(data, season)
  right_season = data[season]
  ages = right_season.collect do |person|
    person["age"].to_f
  end

ages
end

 def get_average_age_for_season(data, season)
  # code here
  all_ages = ages_of_contestants(data, season)

  #gets you the sum where result is accumulator which starts at zero
  #inject like reduct in javascript
  sum = all_ages.inject(0.00) do |result, element|
    result + element
 end
 puts sum

 average = (sum/all_ages.length).to_f
 ((average * 2).ceil.to_f / 2).to_i
end
#(v*2).ceil.to_f / 2 where v is your variable.
#Multiply by 2, round, divide by 2.
# You can accomplish this with a modulo operator too.
#
# (x + (0.05 - (x % 0.05))).round(2)
# If x = 1234.56, this will return 1234.6
