class AdminController < ApplicationController 
  def index
    
     @proyectos = Proyecto.all
     @total_proyectos = Proyecto.count
     @users = User.all
end end