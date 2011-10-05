class AddUrlToProyecto < ActiveRecord::Migration
  def change
    add_column :proyectos, :proyecto_url, :string
  end
end
