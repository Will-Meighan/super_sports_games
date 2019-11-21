ages = [24, 30, 18, 20, 41]

sum_of_ages = ages.sum

number_of_individuals = ages.length

average_age = sum_of_ages / number_of_individuals.to_f

age_minus_average = ages.map do |age|
  age -= average_age
end

age_minus_average_sqaured = age_minus_average.map do |number|
  number * number
end

sum = age_minus_average_sqaured.sum

sum_2 = sum / number_of_individuals

standard_deviation = Math.sqrt(sum_2)

puts standard_deviation
