ActiveAdmin.register TripPhoto do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form(:html => { :multipart => true }) do |f|
  	f.inputs "Trip" do
  	  f.input :trip
      f.input :url, :as => :file
      f.input :description
    end
    f.buttons
  end 
end
