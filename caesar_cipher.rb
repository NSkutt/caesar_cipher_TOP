# frozen_string_literal: true
# encrypts and decrypts messages according to the casesar cipher method
class CaesarCipher
  def initialize(input, shift = 3)
    @input = input
    @shift = shift
  end
  def caesar_cipher
    prepare = @input.chars
    if @shift > 25 then @shift %= 26 end
    prepare.each_index do |letter|
      prepare[letter] = prepare[letter].ord
      prepare[letter] += @shift unless prepare[letter] < 65 || prepare[letter] > 122
      if @shift > 0 then prepare[letter] -= 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] > 122 end
      if @shift < 0 then prepare[letter] += 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] < 65 && prepare[letter] > 39 end
      prepare[letter] = prepare[letter].chr
    end
  p prepare * ""
  end

  def caesar_decipher
    prepare = @input.chars
    if @shift > 25 then @shift %= 26 end
    prepare.each_index do |letter|
      prepare[letter] = prepare[letter].ord
      prepare[letter] -= @shift unless prepare[letter] < 65 || prepare[letter] > 122
      if @shift > 0 then prepare[letter] += 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] < 65 && prepare[letter] > 39 end
      if @shift < 0 then prepare[letter] -= 26 if prepare[letter] > 90 && prepare[letter] < 97 || prepare[letter] > 122 end
      prepare[letter] = prepare[letter].chr
    end
    p prepare * ""
  end
end
