class PagesController < ApplicationController

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

  #post request to create the page
  def create
    @page = Page.new(pages_params)

    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  #edit form(Not the actual action)
  def edit
    @page = Page.find(params[:id])

  end

  def update
    @page = Page.find(params[:id])
    if @page.update(pages_params)
      redirect_to pages_path
    end
  end

  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end
    

  private 
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end

end
