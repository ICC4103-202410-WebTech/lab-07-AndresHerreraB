class User < ApplicationRecord
    has_many :posts
    validates :name, presence: { message: "debe estar presente. Por favor, introduce tu nombre." }
    validates :email, presence: { message: "debe estar presente. Por favor, introduce tu correo electrónico." }, uniqueness: { message: "ya está en uso. Por favor, utiliza otro correo electrónico." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "no es válido. Por favor, introduce un correo electrónico válido." }
    validates :password, presence: { message: "debe estar presente. Por favor, introduce tu contraseña." }, length: { minimum: 6, message: "debe tener al menos 6 caracteres." }
  end