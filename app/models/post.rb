class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    validates :title, presence: { message: "debe estar presente. Por favor, introduce el título del post." }
    validates :content, presence: { message: "debe estar presente. Por favor, introduce el contenido del post." }
    validates :user_id, presence: { message: "debe estar presente. Por favor, selecciona un usuario." }
    validates :answers_count, :likes_count, numericality: { greater_than_or_equal_to: 0, message: "no puede ser negativo." }
    validates :published_at, presence: { message: "debe estar presente. Por favor, introduce la fecha de publicación." }
  end