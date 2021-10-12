class Ephemeri < ApplicationRecord
    mount_uploader :imagen, ImagenUploader
    enum category: %i[musical deportiva noticia tecnologia cultura otra]
    scope :by_categoria, ->(input) { where('categoria LIKE ?', input) }

       
end
