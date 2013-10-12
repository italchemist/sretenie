ActiveAdmin.register Trip do
  controller do
    def permitted_params
      params.permit(:trip => [:name, :trip_category_id, :description, :keywords])
    end
  end
end
