def caesar_cipher(input, shift = 3)
  prepare = input.chars
  if shift > 25 then shift %= 26 end
  prepare.each_index do |letter|
    prepare[letter] = prepare[letter].ord
    prepare[letter] += shift unless prepare[letter] < 65 || prepare[letter] > 122
    if shift > 0 then prepare[letter] -= 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] > 122 end
    if shift < 0 then prepare[letter] += 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] < 65 && prepare[letter] > 39 end
    prepare[letter] = prepare[letter].chr
  end
p prepare * ""
end

alpha = caesar_cipher("Alpha", 30)
alpha

str = caesar_cipher("What a string!", -5)
str

def caesar_decipher(input, shift = -3)
  prepare = input.chars
  if shift > 25 then shift %= 26 end
  prepare.each_index do |letter|
    prepare[letter] = prepare[letter].ord
    prepare[letter] -= shift unless prepare[letter] < 65 || prepare[letter] > 122
    if shift > 0 then prepare[letter] += 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] < 65 && prepare[letter] > 39 end
    if shift < 0 then prepare[letter] -= 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] > 122 end
    prepare[letter] = prepare[letter].chr
  end
  p prepare * ""
end

caesar_decipher(alpha, 30)

caesar_decipher(str, -5)
