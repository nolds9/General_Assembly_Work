class Alien < ActiveRecord::Base

  belongs_to :spaceship, dependent: :destroy

end