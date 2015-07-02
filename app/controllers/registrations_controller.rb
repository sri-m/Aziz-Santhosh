class RegistrationsController < ApplicationController
	layout "registration", only: [:students]
  def students
  end

  def faculty
  	#render layout: "my_layout"
  	redirect_to services_my_page_path
  end
end
