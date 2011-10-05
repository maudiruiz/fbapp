class DisplayController < ApplicationController
  skip_before_filter :authorize
  def index
    @proyectos = Proyecto.paginate :page=>params[:page], :order=>'created_at desc', :per_page => 1
  end

end
