module FunWithStrings
  def palindrome?
    #self.downcase == self.downcase.reverse
    self.downcase.gsub(/\W/,'').reverse == self.downcase.gsub(/\W/,'')
  end
  def count_words
    self.scan(/[a-zA-Z]+/).each.with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
    end
  end
  def anagram_groups
      words = self.split(" ")
      anagram = []
      words.each_with_index do |word, index|
        next if anagram.join(" ").include? word
        group = []
        group.push word
        words.each_with_index do |w, i|
          if w.downcase.chars.sort.join == word.downcase.chars.sort.join and i != index
            group.push w
          end
        end
        anagram.push group
      end
      p anagram
      anagram
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
  
  #palindrome?('redivider')
end
