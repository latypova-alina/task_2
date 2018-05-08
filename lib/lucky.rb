module Lucky
  def self.collect(tickets = [])
    for i in 1..999999
      left_nums = [i/100000, (i/10000)%10, (i/1000)%10]
      right_nums = [(i/100)%10, (i/10)%10, i%10]
      right_sum = left_nums.inject { |sum, el| sum + el}
      left_sum = right_nums.inject { |sum, el| sum + el}
      if(right_sum == left_sum)
        tickets << i.to_s
      end
    end
    tickets
  end
end
