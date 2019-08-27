class ApplicationController < ActionController::Base
  def index
    @pages = Page.all
    # renders index.html.erb
  end

  # showing a single page
  def show
    @page = Page.find(params[:id])
    # renders index.html.erb
  end

  # displays the form to create the new page
  def new
    @page = Page.new
    # renders new.html.erb

  end

  def edit

  end

end
