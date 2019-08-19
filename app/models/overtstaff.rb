class Overtstaff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validate :verify_overt_software_email_address
  validates :email, uniqueness: true
  validates :first_name,:last_name,:email,:password,presence:true,:allow_nil => false

  before_create :confirmation_token_verify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

     private
      def confirmation_token_verify
    if self.confirmation_token.blank?
      self.confirmation_token = SecureRandom.urlsafe_base64.to_s
    end
  end
     #check if email account belongs to overt software
    def verify_overt_software_email_address
      if self.email.length > 18
    	email_account = self.email[-17..-1]
      else
       email_account = "notovert" 
     end
    	if 
    		email_account != "overtsoftware.com"
        ##will cause the next validation to fail and record will not be created
         self.first_name = nil
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
