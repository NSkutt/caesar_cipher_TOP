# frozen_string_literal: true

require './caesar_cipher.rb'

RSpec.describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'shifts and returns the input' do
      message = described_class.new('abcde', 5)
      expect(message.caesar_cipher).to eql('fghij')
    end
    it 'shifts without a specified number' do
      message = described_class.new('abcde')
      expect(message.caesar_cipher).to eql('defgh')
    end
  end

end
