class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_modelos
  require 'will_paginate/array'

  protected

  def set_modelos
    @registros = Record.all
  end

  helper_method :age

  def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end

end
