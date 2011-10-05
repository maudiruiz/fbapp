class Proyecto < ActiveRecord::Base
  # Alias for <tt>acts_as_taggable_on :tags</tt>:
    acts_as_taggable
    acts_as_taggable_on :skills, :interests
    
    validates :name, :description, :image_url, :tag_list, :proyecto_url, :type_pr, :presence => true 
    validates :image_url, :format => {
        :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'Debes poner una URL para una imagen GIF, JPG o PNG.' }
    validates_length_of :description, :minimum => 10
    validates_format_of :proyecto_url, :with => URI::regexp(%w(http https)), :message => 'La liga al proyecto tiene que ser una URL válida' 
end
