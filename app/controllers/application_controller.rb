class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_modelos
  require 'will_paginate/array'

  protected

  def set_modelos
    @registros = Record.all
  end
end
