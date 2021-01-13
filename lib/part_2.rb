def palindrome?(str)
  reverse_str = ""
  i = str.length - 1
  while i >= 0
    reverse_str += str[i]
    i -= 1
  end
  if str == reverse_str
    return true
  end
  false 
end

def substrings(str)
  substr_arr = []
  str.each_char.with_index do |char, idx|
    (idx...str.length).each do |i|
        substr_arr << str[idx..i]
    end
  end
  substr_arr
end

def palindrome_substrings(str)
  final_arr = []
  substr_arr = substrings(str)
  substr_arr.each { |elem| final_arr << elem if palindrome?(elem) && elem.length > 1 }
  final_arr 
end