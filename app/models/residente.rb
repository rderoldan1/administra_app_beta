class Residente < ActiveRecord::Base
  belongs_to :apartamento
  after_create :incrementar_residente

  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :identificacion, presence: true, uniqueness: true


  def incrementar_residente
    apartamento.nro_habitantes += 1
    apartamento.save
  end
end
