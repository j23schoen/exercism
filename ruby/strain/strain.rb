=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end

class Array
    def keep
        filter {|e| yield(e)}
    end

    def discard
        filter {|e| !yield(e)}
    end

    private 
    def filter
        self.each_with_object([]) {|value, result| result << value if yield(value)}
    end
end
