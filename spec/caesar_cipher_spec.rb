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
  describe '#caesar_decipher' do
    it 'unshifts and returns the input' do
      message = described_class.new('fghij', 5)
      expect(message.caesar_decipher).to eql('abcde')
    end
    it 'unshifts without a specified number' do
      message = described_class.new('defgh')
      expect(message.caesar_decipher).to eql('abcde')
    end
  end
end
