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
    dials = @input.gsub(/[[:space:]]/, '').chars
    msg = dials.map do |char|
      next char unless char.match?(/[a-z]/i)

      tooth = char.ord
      code = encode ? tooth + @shift : tooth - @shift
      code -= 26 if code > 122 || (tooth <= 90 && code > 90)
      code += 26 if code < 65 || (tooth >= 97 && code < 97)
      code.chr
    end
    msg * ''
  end
end
