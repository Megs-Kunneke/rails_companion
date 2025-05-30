class Level < ApplicationRecord
  has_many :pages, dependent: :destroy
end
