class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged


  #Validations are necessary.
  
  validates :slug, presence: true # Validates Presence i.e Slug can't be blank.

  validates :slug, uniqueness: true # Validates uniqueness i.e every slug must be unique.

  validates :slug, length: { in: 2..2000 } # Validates length i.e min & max length of the slug.

  validates :slug, format: { with: /\A[a-zA-Z0-9-_]+\z/,
    message: ":only letters(A-Z or a-z), numbers(0-9), dashes(-) and underscores(_) are allowed" } # Validates format of the slug.

end