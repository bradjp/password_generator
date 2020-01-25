require 'password_generator'

describe '#generate_password' do
  it 'returns a password with length 8 when called without an argument' do
    expect(generate_password()).to satisfy('a length of 8') do
      |length| length.size == 8
    end
  end
end