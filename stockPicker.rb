def stock_picker(days)
  greater = 0
  indexes = [0, 0]
  days.each_with_index do |i, idx|
    for item in (idx + 1)..days.length
      diff = days[item] - i
      if diff > 0 && diff > greater
        greater = diff
        indexes = [idx, item]
      end
    end
  end
  indexes
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
