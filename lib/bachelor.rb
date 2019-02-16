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
  data.each do |seasons, contenstants|
    contenstants.each do |hash|
      if hash.values.include?(occupation)
        hash.each do |title, descript|
          if title == "name"
            return descript
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seasons, contenstants|
    contenstants.each do |hash|
      if hash.values.include?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, contenstants|
    contenstants.each do |hash|
      if hash.values.include?(hometown)
        hash.each do |title, descript|
          if title == "occupation"
            return descript
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data.each do |seasun, contestants|
    arr_len = contenstants.length
    if seasun == season
      contestants.each do |hash|
        hash.each do |title, descript|
          if title == "age"
            num = descript.to_i
            total_age += num
          end
        end
      end
    end
  end
  avg = total_age / arr_len
  return avg 
end
