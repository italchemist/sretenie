ActiveAdmin.register Trip do
  controller do
    def permitted_params
      params.permit(:trip => [:name, :trip_category_id, :description, :keywords, :photo])
    end
  end

  form(:html => { :multipart => true }) do |f|
  	f.inputs "Trip" do
      f.input :name
      f.input :trip_category
      f.input :photo, :as => :file
      f.input :description
      f.input :keywords
    end
    f.buttons
  end 
end
