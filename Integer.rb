class Integer
  def collatz_length
    value = self

    # 1 returns self as length
    return value if value <= 1

    # start the amount of terms/length at 1
    length = 1
    #while loop for the range of numbers starting at 1
    while (value > 1)
      #if number is even do this
      if (value % 2 == 0)
        value /= 2
        #if number is nto even do this
      else
        value = (value * 3) + 1
      end
      #add 1 to the amount of terms.length
      length += 1
    end
    length
  end
end

# intialze the variables
startNo, longestTerm = 1, 0
#loop through the range of numbers
1.upto(999999) { |n|
  len = n.collatz_length
  #replace the variables with the greater term number
  startNo, longestTerm = n, len if len > longestTerm
}

startNoComma = startNo.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
longestTermComma = longestTerm.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
puts "The number with the largest amount of terms is #{startNoComma} which yields #{longestTermComma} terms."
