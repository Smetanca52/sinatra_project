def cipher(arg, key)
  low = ('a'..'z').to_a
  up = ('A'..'Z').to_a
  result = []
  if arg.nil?
    'Type any phrase and number for shifts'
  else
    arg.split(//).each do |x|
      if low.include?  x
        result << low[(low.find_index(x) + key.to_i) % 26]
      elsif up.include? x
        result << up[(up.find_index(x) + key.to_i) % 26]
      else
        result << x
      end
    end
    result.join
  end
end
