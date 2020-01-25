require 'password_generator'

describe '#generate_password' do
  it 'returns a password with length 8 when called without an argument' do
    expect(generate_password()).to satisfy('a length of 8') do
      |length| length.size == 8
    end
  end
  it 'returns a password with length 6 when called with 6' do
    expect(generate_password(6)).to satisfy('a length of 6') do
      |length| length.size == 6
    end
  end
end