class Api::V1::NetflixesController < ApplicationController
  def index
    if request.query_string.present?
      # Filtragem dos registros por ano de lançamento, gênero, país
      @netflixes = Netflix.search_by(params[:year] || params[:genre] || params[:country])
    else
      # Registros ordenados por ano de lançamento, de forma decrescente
      @netflixes = Netflix.all.order('year DESC')
    end
  end
end
