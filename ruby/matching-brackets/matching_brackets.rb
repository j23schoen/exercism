# frozen_string_literal: true

class Brackets
  def self.paired?(bracket_boi)
    bracket_boi.gsub!(/\s+/, '')
    combos = {
      '[' => ']',
      '{' => '}',
      '(' => ')'
    }
    combo_stack = []

    bracket_boi.chars.each do |char|
      combo_stack.push(char) if combos[char]
      unless combos[char]
        return false unless combos[combo_stack.pop] == char
      end
    end

    return false if combo_stack.size > 0

    true
  end
end
