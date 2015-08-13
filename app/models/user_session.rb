class UserSession < Authlogic::Session::Base
  def self.validators_on(x)
    []
  end
end
