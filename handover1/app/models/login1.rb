class Login1 < ActiveRecord::Base
  has_secure_password
  validates :Email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
          }
  validates :CompanyName,
            presence: true
  validates :Phone,
            presence: true,numericality:{only_integer:true}
  validates :EscalationLevel,
            presence: true,numericality:{only_integer:true}
  def to_s
    "#{CompanyName}"
  end
end
