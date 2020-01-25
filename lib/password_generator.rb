def character
  'a'
end

def generate_password(length=8)
  character() * length
end