def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasun, contestants|
    if seasun == season
      contestants.each do |hash|
        if hash.values.include?("Winner")
          hash.each do |title, descript|
            if title == "name"
              arr = descript.split(" ")
              return arr[0]
            end
          end
        end
      end
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
