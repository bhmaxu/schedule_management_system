class SearchResultsController < ApplicationController
  protect_from_forgery :except => :search

  def search
    @keyword = params[:keyword]
    @agenda_result = []
    AgendaItem.where("content like ?", '%' + @keyword + '%').find_each do |item|
      @agenda_result.append(item)
    end
  end
end
