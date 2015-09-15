require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  # def test_run_works
  #   assert_respond_to(Changer, :run)
  # end

  def test_quarters
    ch = Changer.new
    assert(@quarters = 3, ch.quarters(75))
    assert(@quarters = 2, ch.quarters(74))
  end

  def test_dimes
    ch = Changer.new
    assert(@dimes = 7, ch.dimes(75))
    assert(@dimes = 8, ch.dimes(80))
  end

  def test_nickels
    ch = Changer.new
    assert(@nickels = 15, ch.nickels(75))
    assert(@nickels = 0, ch.nickels(3))
    assert(@nickels = 1, ch.nickels(7))
  end

  def test_pennies
    ch = Changer.new
    assert(@pennies = 3, ch.pennies(73))
  end

end
