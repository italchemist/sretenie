ActiveAdmin.register TripDescription do
  controller do
    def permitted_params
      params.permit(:trip_description => [:trip_id, :day, :description])
    end
  end
end
