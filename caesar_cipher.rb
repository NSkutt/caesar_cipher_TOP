# frozen_string_literal: true

# encrypts and decrypts messages according to the casesar cipher method
class CaesarCipher
  def initialize(input, shift = 3)
    @input = input
    @shift = shift % 26
  end

  def caesar_cipher
    spin(true)
  end

  def caesar_decipher
    spin(false)
  end

  def spin(encode)
    dials = @input.chars
    msg = dials.map do |char|
      tooth = char.ord
      code = encode ? tooth + @shift : tooth - @shift
      code.chr
    end
    msg * ''
  end
end
