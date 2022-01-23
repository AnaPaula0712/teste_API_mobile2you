class Netflix < ApplicationRecord
  include PgSearch::Model # gema pg_search

  validates :title, :genre, :year, :country, :published_at, :description, presence: true
  # Evita duplicidade de registros
  validates :title, uniqueness: true

  # Filtragem dos registros por ano de lançamento, gênero, país
  pg_search_scope :search_by, against: %i[year genre country], using: { tsearch: { prefix: true } }
end
