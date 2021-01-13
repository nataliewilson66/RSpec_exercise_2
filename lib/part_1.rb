def partition(array, num)
  twod_array = []
  lt_subarr = []
  gt_subarr = []
  array.each do |elem|
    lt_subarr << elem if elem < num
    gt_subarr << elem if elem >= num
  end
  twod_array.push(lt_subarr, gt_subarr)
  twod_array
end

def merge(hash_1, hash_2)
  new_hash = {}
  hash_1.each { |key, val| new_hash[key] = val }
  hash_2.each { |key, val| new_hash[key] = val }
  new_hash
end

def censor(sentence, arr)
  vowels = "aeiou"
  sent_arr = sentence.split(" ")
  sent_arr.each do |word|
    if arr.include?(word.downcase)
        word.each_char.with_index do |char, idx|
            if vowels.include?(char.downcase)
                word[idx] = "*"
            end
        end
    end
  end
  sent_arr.join(" ")
end

def power_of_two?(num)
  (0..num).each do |i|
    if 2 ** i == num  
        return true
    end 
  end 
  false
end