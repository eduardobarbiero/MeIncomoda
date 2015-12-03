class Problema < ActiveRecord::Base
  belongs_to :user

  mount_uploader :imagem, ProblemasUploader
end
