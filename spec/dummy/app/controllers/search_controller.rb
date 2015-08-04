class SearchController < ApplicationController
  def index
    @search = Search::Dummy.new(params[:q])
  end
end
