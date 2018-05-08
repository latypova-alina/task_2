require "byebug"
require "writer"

class Ticket
  include Writer

  N = 100000

  def initialize(lucky_array)
    @@lucky = lucky_array
  end

  def generate
    N.times do
      num = ""
      6.times do |i|
        dig = Random.new.rand(0..9)
        num << dig.to_s
      end
      write(num, 'numbers.txt')
      write(num, 'lucky_numbers.txt') if @@lucky.include?(num)
    end
  end
end
