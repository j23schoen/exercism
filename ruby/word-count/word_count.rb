class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words = @sentence.gsub(/'\s|\s'/, ' ').gsub(/[!@#%&*()\$\^:.]/, '').split(/[\s,\n]/)
    words.each_with_object(Hash.new(0)) do |word, obj|
      obj[word.downcase] += 1 if word.size > 0
    end
  end
end

