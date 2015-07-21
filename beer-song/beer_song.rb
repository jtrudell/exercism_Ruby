class BeerSong
  def verse(number)
    Verse.new(number).lyrics
  end

  def verses(start, stop)
    song = verse(start)
    until start == stop
      start -= 1
      song << verse(start)
    end
    song
  end

  def sing
    verses(99, 0)
  end
end

class Verse
  attr_reader :number, :bottles, :take_down, :next_bottle

  def initialize(number)
    @number = number
    @bottles = "#{number} bottles"
    @take_down = 'Take one down and pass it around'
    @next_bottle = "#{number - 1} bottles"

    if @number == 0
      @bottles = 'No more bottles'
      @take_down = 'Go to the store and buy some more'
      @next_bottle = '99 bottles'
    end

    if @number == 1
      @bottles = '1 bottle'
      @take_down = 'Take it down and pass it around'
      @next_bottle = 'no more bottles'
    end

    @next_bottle = '1 bottle' if number == 2
  end

  def lyrics
    "#{bottles} of beer on the wall, #{bottles.downcase} of beer.\n"\
    "#{take_down}, #{next_bottle} of beer on the wall.\n"\
  end
end
