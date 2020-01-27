def big
  def character
    ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
    'V','W','password','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p',
    'q','r','s','t','u','v','w','password','y','z','1','2','3','4','5','6','7','8','9','%','$'].sample
    
  end

  def generate_password(length=8)
    
    check_length_conditions(length)
  
    build_password(length)

  end

  def password_creator

    puts 'Do you require a password with unique characters? Enter yes or no.'

    unique = gets.chomp

    puts 'Please enter an integer: your generated password will be of this length.'

    entry = gets.chomp.to_i

    if unique == 'yes'
      while entry > 30 do
        puts 'Please enter a number below 31'
        entry = gets.chomp.to_i
      end
      get_unique_password(entry)
    else
      generate_password(entry)
    end

  end

  private

  def build_password(length)
    
    password = []
    
    length.times { password << character }

    password.join
  end

  def get_unique_password(length)
    password = generate_password(length)
    password = password.split('')
    while password.uniq.length != password.length do
      password = generate_password(length)
      password = password.split('')
    end
    password.join
  end

  def check_length_conditions(length)
    raise ArgumentError, 'Insecure password length.' if length < 6
    raise ArgumentError, 'Too many characters.' if length > 150
  end
  password_creator()
end