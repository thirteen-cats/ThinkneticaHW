#4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер 
# буквы в алфавите (a - 1).

arr = ("a".."z").to_a
vowels = ["a", "e", "i", "o", "u", "y"]
hash_vowels = {}

vowels.each do |letter|
    hash_vowels[letter] = arr.index(letter) + 1

end
puts hash_vowels