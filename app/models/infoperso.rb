class Infoperso < ActiveRecord::Base
has_many :infos
has_many :etats
end
