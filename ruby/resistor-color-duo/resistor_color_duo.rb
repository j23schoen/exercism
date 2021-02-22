class ResistorColorDuo

  COLOR_BAND = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }.freeze

  def self.value(color_bands)
    COLOR_BAND.values_at(*color_bands[0..1]).inject(:+).to_i
  end

end


#Black - Brown - Red - Orange - Yellow - Green - Blue - Violet - Grey - White
