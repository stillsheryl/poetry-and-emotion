class SearchController < ApplicationController
  def index
    @poems = PoemFacade.poems_by_author(params[:author])
  end
end
