class User < ActiveRecord::Base
  has_many :doctors, :dependent => :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: {message: "Debe estar presente para Crear el usuario"}
  validates :username, uniqueness: {message: "Este nombre de usuario ya existe"}
  validates :username, :length => {
    :minimum   => 5,
    :maximum   => 1500,
    :too_short => "debe tener al menos %{count} caracteres",
    :too_long  => "debe tener %{count} caracteres maximo"
  }
  validates :cedula, presence: {message: "Debe indicar la cedula del paciente"}    
  validates :cedula, uniqueness: {message: "Esta cedula ya existe"}
  validates :cedula, numericality: {message: "La cedula debe ser numerica"}
end
