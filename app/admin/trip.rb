ActiveAdmin.register Trip do
  controller do
    def permitted_params
      params.permit(:trip => [:name])
    end
  end
end
