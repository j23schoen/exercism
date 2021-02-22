class Anagram

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    matches = []
    sorted_word = @word.chars.sort_by(&:downcase).join.downcase
    anagrams.each do |ana|
      next if @word.downcase == ana.downcase

      matches.push(ana) if ana.chars.sort_by(&:downcase).join.downcase == sorted_word
    end
    matches
  end
end
