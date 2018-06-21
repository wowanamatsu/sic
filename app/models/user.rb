class User < ApplicationRecord

	has_secure_password

	validates_presence_of :name, message: 'Informe o nome!'
	validates :password, presence: true, length: {minimum: 6, message: 'Muito curto'}

	VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT, message:'inválido'}, uniqueness: {case_sensitive: false}
	before_save { self.email = email.downcase }

end
