require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
supply = "Balloons"
holiday_hash.each do |person, data|
  data.each do |attribute, value|
    if attribute == :christmas || :new_years
      value << supply
    end
    end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
supply = "Grill"
supply2 = "Table Cloth"
holiday_hash[:spring][:memorial_day] << supply
holiday_hash[:spring][:memorial_day] << supply2
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
supplies = ["Flags", "Italian Food", "Parade Floats"]
supplies2= ["Candy Hearts", "Cupid Cut-Out"]
holiday_hash[:fall][:columbus_day] = supplies
holiday_hash[:winter][:valentines_day] = supplies2
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
y = []
holiday_hash.each do |season, data|
  if season == :winter
    data.each do |holiday, supply|
      supply.each do |x|
        y << x
      end
    end
    end
  end
  return y
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    season_cap = season.capitalize
    puts "#{season_cap}:"
    data.each do |attribute, value|
    att_cap = attribute.to_s.tr("_", " ")
    att_caps=att_cap.split.map(&:capitalize).join(' ')
    vals = value.join(", ")
    puts "  #{att_caps}: #{vals}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  y = []
  holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if value.include? "BBQ"
        y << attribute
      end
    end
end
return y
end
