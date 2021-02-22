# frozen_string_literal: true

class Queens
  def initialize(white:, black:)
    @white = white
    @black = black
  end

  def attack?
    straight_attack? || diagonal_attack?
  end

  private

  attr_reader :white, :black

  def straight_attack?
    [0, 1].find { |index| operate_on(index, :==) }
  end

  def diagonal_attack?
    [0, 1].map { |index| operate_on(index, :-).abs }.inject(:-).zero?
  end

  def operate_on(index, operator)
    [white[index], black[index]].inject(operator)
  end
end
