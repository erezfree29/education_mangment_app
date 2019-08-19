class Institutionstaff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :confirmation_token_verify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
     def confirmation_token_verify
    if self.confirmation_token.blank?
      self.confirmation_token = SecureRandom.urlsafe_base64.to_s
    end
  end

   # password section
   PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
  /x

  validates :password,
  presence: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  on: :create

  validates :password,
  presence: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  allow_nil: true,
  on: :update



end
