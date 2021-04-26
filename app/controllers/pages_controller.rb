class PagesController < ApplicationController

  def index
    redirect_to '/admin' if current_user && current_user.role == "admin" 
  end
end