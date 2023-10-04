class ValidatePassword

  def initialize(password)
    @password = password
  end

  def perform
    !((@password =~ /^(?!.*(.)\1{2,})(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%&*+=:;?<>]).{6,24}$/).nil?)
  end
end
