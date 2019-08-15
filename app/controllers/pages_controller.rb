class PagesController < ApplicationController

  def home
  end

  def index
  	@pages = Page.all
  end

  def show
  	@page = Pages.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
