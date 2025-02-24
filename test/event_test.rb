require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_it_exists
    assert_instance_of Event, @event
  end

  def test_it_has_attributes
    assert_instance_of String, @event.name
    assert_equal "Curling", @event.name
    assert_instance_of Array, @event.ages
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

  def test_it_can_find_max_age
    assert_instance_of Integer, @event.max_age
    assert_equal 41, @event.max_age
  end

  def test_it_can_find_min_age
    assert_instance_of Integer, @event.min_age
    assert_equal 18, @event.min_age
  end

  def test_it_can_calculate_average_age
    assert_instance_of Float, @event.average_age
    assert_equal 26.60, @event.average_age
  end

  def test_it_can_calculate_standard_deviation_age
    assert_instance_of Float, @event.standard_deviation_age
    assert_equal 8.28, @event.standard_deviation_age
  end
  
end
