# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor

  def initialize(unformatted_emails)
    @unformatted_emails = unformatted_emails
  end

  def parse
    here = @unformatted_emails.tr(" ,","-").split("-").delete_if { |x| x == ""}.uniq
  end

end
