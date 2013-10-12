ActiveAdmin.register Trip do
  controller do
    def permitted_params
      params.permit(:trip => [:name, :category_id, :description, :keywords])
    end
  end
end
