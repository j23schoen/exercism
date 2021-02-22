class ETL
  def self.transform(scrabble_values)
    new_scrabble_values = {}
    scrabble_values.each do |key, vals|
      vals.each_with_object(new_scrabble_values) do |letter, obj|
        obj[letter.downcase] = key
      end
    end
    new_scrabble_values
  end
end
