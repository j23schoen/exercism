# frozen_string_literal: true

class Transpose
  def self.transpose(input)

    ljust_length = input.lines.max_by { |line| line.chomp.length }.chomp.length
    grid = input.lines.map { |line| line.chomp.ljust(ljust_length, '_') }

    transposed_grid = grid.map { |line| line.chomp.chars }.transpose
    transposed_grid.map(&:join).join("\n")
  end
end
