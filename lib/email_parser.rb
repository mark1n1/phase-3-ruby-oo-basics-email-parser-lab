# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(addresses)
    @addresses = addresses
  end

  def parse
    return_addresses = []
    @addresses.split(/[,\s|,|\s]/).each do |email|
      if email.length != 0
        if !return_addresses.include?(email)
          return_addresses << email
        end
      end
    end

    return_addresses
  end
end