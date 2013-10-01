ActiveAdmin.register TripSchedule do
  controller do
    def permitted_params
      params.permit(:trip_schedule => [:date_start, :date_end, :price, :trip_id])
    end
  end
end
