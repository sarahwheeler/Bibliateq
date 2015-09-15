class UserStepsController < ApplicationController
	include Wicked::Wizard

	steps :publisher_setup, :payment

	def show
		@user = current_user
		@user.role = "admin"
		@user.save
		@publisher = @user.publisher
		render_wizard
	end
end
