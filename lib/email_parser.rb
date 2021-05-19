require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_reader :string

    def initialize(string)
        @string = string
    end

    def parse
        # binding.pry
        split_string = self.string.split(/ |,/)
        no_blanks = split_string.select do |string|
            string != ""
        end
        no_blanks.uniq
    end

end