def character
  ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
   'V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p',
   'q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','%','$'].sample
  
end

def generate_password(length=8)
  
  check_length_conditions(length)
 
  build_password(length)

end

def password_creator

  puts 'Please enter an integer: your generated password will be of this length.'

  entry = gets.chomp.to_i

  generate_password(entry)
end

private

def build_password(length)
  
  password = []
  
  length.times { password << character }

  password.join
end

def check_length_conditions(length)
  raise ArgumentError, 'Insecure password length.' if length < 6
  raise ArgumentError, 'Too many characters.' if length > 150
end