class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    sum_of_ages = ages.sum

    number_of_individuals = ages.length

    sum_of_ages / number_of_individuals.to_f.round(2)
  end

  def standard_deviation_age
    age_minus_average = ages.map do |age|
      age -= average_age
    end

    age_minus_average_sqaured = age_minus_average.map do |number|
      number * number
    end

    sum = age_minus_average_sqaured.sum

    sum_2 = sum / ages.length

    Math.sqrt(sum_2).round(2)
  end

end
