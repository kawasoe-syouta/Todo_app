class SearchesController < ApplicationController
  def index
    @tasks = Task.search(params[:search]).limit(132)
    @search = params[:search]
  end
end