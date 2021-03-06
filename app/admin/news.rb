ActiveAdmin.register News do
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :header
      f.input :content, as: :html_editor
    end

    f.buttons
  end
end
