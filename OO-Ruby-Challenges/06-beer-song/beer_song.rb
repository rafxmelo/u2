class BeerSong
  def verse(number)
    case number
    when 0
      no_more_bottles
    when 1
      one_bottle
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} #{bottle_or_bottles(number - 1)} of beer on the wall.\n"
    end
  end

  def verses(starting, ending)
    starting.downto(ending).map { |num| verse(num) + "\n" }.join
  end

  private

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def one_bottle
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def bottle_or_bottles(number)
    number == 1 ? "bottle" : "bottles"
  end
end
