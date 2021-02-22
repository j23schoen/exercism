require 'minitest/autorun'
require_relative 'queen_attack'

# Common test data version: 2.2.0 aaadbac
class QueenAttackTest < Minitest::Test

  def test_can_not_attack
    queens = Queens.new(white: [2, 4], black: [6, 6])
    refute queens.attack?
  end

  def test_can_attack_on_same_row
    queens = Queens.new(white: [2, 4], black: [2, 6])
    assert queens.attack?
  end

  def test_can_attack_on_same_column
    queens = Queens.new(white: [4, 5], black: [2, 5])
    assert queens.attack?
  end

  def test_can_attack_on_first_diagonal
    queens = Queens.new(white: [2, 2], black: [0, 4])
    assert queens.attack?
  end

  def test_can_attack_on_second_diagonal
    queens = Queens.new(white: [2, 2], black: [3, 1])
    assert queens.attack?
  end

  def test_can_attack_on_third_diagonal
    queens = Queens.new(white: [2, 2], black: [1, 1])
    assert queens.attack?
  end

  def test_can_attack_on_fourth_diagonal
    queens = Queens.new(white: [2, 2], black: [5, 5])
    assert queens.attack?
  end
end
