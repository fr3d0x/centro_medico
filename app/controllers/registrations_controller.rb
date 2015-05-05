class RegistrationsController < Devise::RegistrationsController
	before_action :configure_devise_permitted_parameters, if: :devise_controller?

	def create
		super
	end

	private

	def configure_devise_permitted_parameters
		registration_params = [:nombre, :apellido, :tipo, :cedula, :email, :password, :password_confirmation, :reset_password_token, :reset_password_sent_at, :remember_created_at, :daw_persona_attributes => [:pers_primernom, :pers_primerape, :pers_tipopers]]
		if params[:action] == 'update'
			devise_parameter_sanitizer.for(:account_update) {
				|u|	u.permit(registration_params << :current_password)	
			}
		elsif params[:action] == 'create'
			devise_parameter_sanitizer.for(:sign_up) { 
       			|u| u.permit(registration_params) 
     		}
		end	
	end

	def after_sign_up_path_for(resource)
		if resource.tipo == "medico"
    		doctor = Doctor.create(nombre: resource.nombre, apellido: resource.apellido, cedula: resource.cedula, user_id: resource.id)
    		return edit_doctor_path(doctor)
   		else
   			after_sign_in_path_for(resource)
   		end
  	end
end