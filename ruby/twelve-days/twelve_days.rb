

=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays

  GIFTS = [
    'a Partridge in a Pear Tree',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ].freeze

  DAYS = %w[first second third fourth fifth sixth seventh eighth
            ninth tenth eleventh twelfth].freeze

  BASE_STRING = "On the %{day} day of Christmas my true love gave to me: %{gift}.\n\n"

  def self.song
    final_song = ''
    previous_gifts = []
    (0..11).each do |number|
      final_song << BASE_STRING % { day: DAYS[number], gift: GIFTS[number] + previous_gifts.join }
      if number.zero?
        previous_gifts.unshift(", and #{GIFTS[number]}")
      else
        previous_gifts.unshift(", #{GIFTS[number]}")
      end
    end
    final_song
  end

end
