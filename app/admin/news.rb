ActiveAdmin.register News do
  controller do
    def permitted_params
      params.permit(:news => [:content])
    end
  end
end
