# encoding: utf-8

ActiveAdmin.register Trip do
  index do
    column "Название", :name
    actions
  end

  controller do
    def permitted_params
      params.permit!
      #(:trip => [:name, :trip_category_id, :description, :keywords, :trip_photos, :trip_photos => [ :url ]])
    end
  end

  form(:html => { :multipart => true }) do |f|
  	f.inputs "Поездка" do
      f.input :name, :label => "Название"
      f.input :trip_category, :label => "Категория"
      f.input :order_number, :label => "Порядок"
      f.input :show_in_upcoming, :label => "Показывать в ближайших"
      f.input :description, :label => "Описание"
      f.input :price_description, :label => "Стоимость"
      f.input :keywords, :label => "Ключенвые слова"
      
      f.has_many :trip_photos, :allow_destroy => true, :heading => 'Фотографии' do |s|
        s.input :url, :as => :file, :label => "Файл"
      end
      
      f.has_many :trip_descriptions, :allow_destroy => true, :heading => 'Расписание' do |s|
        s.input :day, :label => "День"
        s.input :description, as: :html_editor, :label => "Описание"
      end
    end
    f.buttons
  end 
end
