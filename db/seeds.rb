require 'csv'
require "open-uri"

# Parsing do arquivo .csv para popular o banco de dados
puts "Criando conteúdo da Netflix"

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath1 = 'netflix_titles.csv'

CSV.foreach(filepath1, csv_options) do |row|
  Netflix.create!(
    title: row[2],
    genre: row[1],
    year: row[7],
    country: row[5],
    published_at: Date.parse(row[6]), # Conversão da data para o formato %Y-%d-%m
    description: row[11]
  )
end
