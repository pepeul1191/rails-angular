class HomeController < ApplicationController
    def index
  	    render template: 'home/index.html.erb', layout: 'application'	
  	end

  	def usuarios
  		rpta = Home.usuarios
  		render :text => rpta
  	end

  	def filtros
  		usuario = 'pepe'
  		rpta = Home.filtros(usuario)
  		render :text => rpta
  	end
end
