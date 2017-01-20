class Home < ApplicationRecord
	def self.usuarios
		self.execute_statement('SELECT * FROM usuarios', false)
	end

	def self.filtros(usuario)
		puts " X ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
		self.execute_statement('SELECT * FROM usuarios WHERE usuario = $1', [usuario])
	end
end

#http://blog.bigbinary.com/2015/12/28/application-record-in-rails-5.html
#http://stackoverflow.com/questions/22752777/how-do-you-manually-execute-sql-commands-in-ruby-on-rails-using-nuodb