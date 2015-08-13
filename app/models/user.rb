class User < ActiveRecord::Base
  has_many :gifs
  
  acts_as_authentic do |c|
      c.crypto_provider = Authlogic::CryptoProviders::Sha512
      c.login_field = :email
  end
end
