ActiveAdmin.register Business do

  permit_params :name, :general_info, :links,
    address_attributes: [:id, :address_line_1, :city, :zipcode, :country],
    operating_hours_attributes: [:id, :day_of_week, :open, :close],
    category_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :general_info
    column :links
    column :categories do |article|
      table_for article.categories.order('name ASC') do
        column do |category|
          category.name
        end
      end
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :general_info
      row :links
      table_for business.categories.order('name ASC') do
        column "Categories" do |category|
          link_to category.name, [ :admin, category ]
        end
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :general_info
    end
    f.inputs 'Categories' do
      f.input :category_ids, as: :check_boxes, collection: Category.all, label: "Category"
    end
    f.inputs 'Contact Details', for: [:address, f.object.address] do |a|
      a.input :address_line_1
      a.input :city
      a.input :zipcode
      a.input :country
    end
    f.inputs do
      f.input :links
    end
    f.inputs 'Operating Hours' do
      f.has_many :operating_hours do |oh|
        oh.input :day_of_week, as: :radio, collection: Date::DAYNAMES.each_with_index.map { |day, i| [day, i] }
        oh.input :open, as: :time_picker
        oh.input :close, as: :time_picker
      end
    end
    f.actions
  end
end
