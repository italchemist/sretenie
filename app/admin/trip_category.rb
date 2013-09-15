ActiveAdmin.register TripCategory do
  controller do
    def permitted_params
      params.permit(:trip_category => [:name])
    end
  end
end
