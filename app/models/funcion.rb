class Funcion < ApplicationRecord
  belongs_to :pelicula
  belongs_to :sala
  has_many :entradas
end
