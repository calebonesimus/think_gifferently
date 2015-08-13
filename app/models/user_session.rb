class UserSession < Authlogic::Session::Base

  # Required to use bootstrap_form_for
  def self.validators_on(x)
    []
  end
end
