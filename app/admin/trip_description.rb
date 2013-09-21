ActiveAdmin.register TripDescription do
  controller do
    def permitted_params
      params.permit(:trip_description => [:trip_id, :day, :description])
    end
  end

  form do |f|
    f.inputs do
      f.input :trip
      f.input :day 
      f.input :description, as: :html_editor
    end

    f.buttons
  end

end
