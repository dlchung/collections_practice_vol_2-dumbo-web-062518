# your code goes here

def begins_with_r(array)
  all_r = true
  array.each do |x|
    if x[0].downcase != "r" ## [0] is first letter of string
      all_r = false
    end
  end
  all_r
end

def contain_a(array)
  array.select do |x|
    x.count("a") > 0 ## counts number of "a"'s in the string
  end
end

def first_wa(array)
  array.find do |x|
    y = x.to_s
    y.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if { |x| x.class != String } ## Checks object type
end

def count_elements(array)
  count = Hash.new(0)
  new_array = []
  array.each do |x|
    count[x] += 1
  end

  count.each do |x, y|
    new_array << {
      name: x[:name],
      count: y
    }
  end

  new_array
end

def merge_data(keys, data)
  new_array = []
  keys.each do |key|
    key.each do |first_name, name|
      data.each do |data_item|
        data_item.each do |item_name, item|
          if item_name == name
            new_array << key.merge(item)
          end
        end
      end
    end
  end
  new_array
end

def find_cool(cool)
  cool_array = []
  cool.each do |x|
    if x[:temperature].downcase == "cool"
      cool_array << x
    end
  end
  cool_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |x, y|
    new_array = []
    location = y[:location]
    if new_hash[location].nil?
      new_hash[location] = [x]
    else
      new_hash[location] << x
    end
  end
  new_hash
end
