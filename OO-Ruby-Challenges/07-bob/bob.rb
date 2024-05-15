class Bob
  def hey(remark)
    case
    when remark.strip.empty?
      'Fine. Be that way!'
    when remark == remark.upcase && remark =~ /[A-Z]/
      'Whoa, chill out!'
    when remark.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end
