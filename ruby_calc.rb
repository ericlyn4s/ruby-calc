puts "Thanks for using Ruby-Calc. Give me something to calculate!"

opsOne = ["*", "/"]
opsTwo = ["+", "-"]
opsCombo = ["+", "/", "*", "-"]

calc = gets.chomp.split("")
calc.pop()
calc.shift()

#Below function combines integers that aren't single digit / standalone

calc.each_with_index do |i, index|
 nextKey = calc[index+1]
 prevKey = calc[index-1]
  if opsCombo.include? nextKey
    next
  elsif opsCombo.include? i
    next
  elsif nextKey == nil
    next
  else
    i << nextKey
    calc.delete_at(index+1)
    redo
  end
end


#Below function takes an initial loop to search for multiplication or division operators. In the
#case of both existing, I put a second loop that essentially restarts the loop

calc.each_with_index do |i, index|
  a = calc[index - 1].to_i
  b = calc[index + 1].to_i
    if i == "*"
      calc[index] = a*b
      calc.delete_at(index+1)
      calc.delete_at(index-1)
    elsif i == "/"

      calc[index] = a/b
      calc.delete_at(index+1)
      calc.delete_at(index-1)
  end
end


calc.each_with_index do |i, index|
  a = calc[index - 1].to_i
  b = calc[index + 1].to_i
    if i == "*"
      calc[index] = a*b
      calc.delete_at(index+1)
      calc.delete_at(index-1)
    elsif i == "/"
      calc[index] = a/b
      calc.delete_at(index+1)
      calc.delete_at(index-1)
  end
end

#Below loop adds or subtracts accordingly


calc.each_with_index do |i, index|
  break unless calc.include? i
  a = calc[index - 1].to_i
  b = calc[index + 1].to_i
    if i == "+"
      c = a+b
      calc[index] = c
      calc.delete_at(index+1)
      calc.delete_at(index-1)
    elsif i == "-"
      c = a-b
      calc[index] = c
      calc.delete_at(index+1)
      calc.delete_at(index-1)
    end
  end


#Below loop does another iteration over the array to do any more subtraction or addition

  calc.each_with_index do |i, index|
    break unless calc.include? i
    a = calc[index - 1].to_i
    b = calc[index + 1].to_i
      if i == "+"
        c = a+b
        calc[index] = c
        calc.delete_at(index+1)
        calc.delete_at(index-1)
      elsif i == "-"
        c = a-b
        calc[index] = c
        calc.delete_at(index+1)
        calc.delete_at(index-1)
      end
    end

  p calc[0]
