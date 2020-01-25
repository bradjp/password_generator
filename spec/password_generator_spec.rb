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
  it 'returns a random password each time' do
    password = generate_password()
    password_two = generate_password()
    expect(password).not_to eq(password_two)
  end
  it 'returns a message if password is below 6 characters' do
    expect(generate_password(5)).to eq('Insecure password length.')
  end
end