class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :type_pr

      t.timestamps
    end
  end
end
