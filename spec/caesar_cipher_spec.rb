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
  describe 'spin' do
    it 'wraps from z to a' do
      message = described_class.new('xyz', 10)
      expect(message.spin(true)).to eql('hij')
    end
    it 'wraps from a to z' do
      message = described_class.new('abc', -10)
      expect(message.spin(true)).to eql('qrs')
    end
    it 'maintains case specifics' do
      message = described_class.new('XYZ', 20)
      expect(message.spin(true)).to eql('RST')
    end
  end
end
