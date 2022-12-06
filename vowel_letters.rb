vowel = 'aeiouy'
alphabet = ('a'..'z').to_a
hash = {}
for i in vowel.chars
  for j in alphabet
    if i == j
      hash[i] = alphabet.index(i) + 1
    end
  end
end

puts hash

=begin #Еще одно решение

hash = {}

'aeiouy'.each_char{|vowel| hash[vowel] = ('a'..'z').to_a.index(vowel) + 1}

puts hash

=end
