class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags
    validates :name, presence: { message: "debe estar presente. Por favor, introduce el nombre del tag." }, uniqueness: { message: "ya está en uso. Por favor, utiliza otro nombre." }
  end