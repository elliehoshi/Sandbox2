class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :publication_year, type: Integer
  field :isbn, type: String
  field :genre, type: String

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :publication_year, numericality: true
  validates :isbn, presence: true, uniqueness: true
end
