ActiveAdmin.register Trip do
  controller do
    def permitted_params
      params.permit!
      #(:trip => [:name, :trip_category_id, :description, :keywords, :trip_photos, :trip_photos => [ :url ]])
    end
  end

  form(:html => { :multipart => true }) do |f|
  	f.inputs "Trip" do
      f.input :name
      f.input :trip_category
      f.input :description
      f.input :keywords
      f.has_many :trip_photos do |s|
        s.input :url, :as => :file
      end
    end
    f.buttons
  end 
end
