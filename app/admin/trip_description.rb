# encoding: utf-8

ActiveAdmin.register TripDescription do
  controller do
    def permitted_params
      params.permit(:trip_description => [:trip_id, :day, :description])
    end
  end

  form do |f|
    f.inputs do
      f.input :trip, :label => "Поездка"
      f.input :day , :label => "День"
      f.input :description, as: :html_editor, :label => "Описание"
    end

    f.buttons
  end

end
