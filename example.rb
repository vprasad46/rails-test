class User

	attr_accessor  :name, :email

	def initialise(attributes:{})
			@name = attributes[:name]
			@email = attributes[:email]
	end

	def format
		return "The name is #{@name} and the email is #{@email}"
	end
end

