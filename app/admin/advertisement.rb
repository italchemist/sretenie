ActiveAdmin.register Advertisement do
  controller do
    def permitted_params
      params.permit!
      #(:trip => [:name, :trip_category_id, :description, :keywords, :trip_photos, :trip_photos => [ :url ]])
    end
  end
  
  form(:html => { :multipart => true }) do |f|
  	f.inputs "Trip" do
      f.input :url, :as => :file
      f.input :adv_url
      f.input :description, as: :html_editor
    end
    f.buttons
  end 

end
