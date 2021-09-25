ActiveAdmin.register Business do
  permit_params :name, :general_info, :links,
    address_attributes: [:id, :address_line_1, :city, :zipcode, :country],
    operating_hours_attributes: [:id, :day_of_week, :opening_timing, :closing_timing],
    category_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :general_info
    column :categories do |business|
      business.categories.order(name: :asc) do
        link_to category.name, [:admin, category]
      end
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :general_info
      table_for business.categories.order("name ASC") do
        column "Categories" do |category|
          link_to category.name, [:admin, category]
        end
      end
      row "links" do
        resource.links
      end
    end
  end

  sidebar "Address", only: :show do
    attributes_table_for business.address do
      row :address_line_1
      row :city
      row :country
      row :zipcode
    end
  end

  sidebar "Operating hours", only: :show do
    resource.operating_hours.each do |oh|
      oh = OperatingHourPresenter.new(oh)
      li oh.timings
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :general_info
    end
    f.inputs "Categories" do
      f.input :category_ids, as: :check_boxes, collection: Category.all, label: "Category"
    end
    f.inputs "Contact Details" do
      f.has_many :address do |a|
        a.input :address_line_1
        a.input :city
        a.input :zipcode
        a.input :country
      end
    end
    f.inputs do
      f.input :links
    end
    f.inputs "Operating Hours" do
      f.has_many :operating_hours do |oh|
        oh.input :day_of_week, as: :radio, collection: Date::DAYNAMES.each_with_index.map { |day, i| [day, i] }
        oh.input :opening_timing, as: :time_picker
        oh.input :closing_timing, as: :time_picker
      end
    end
    f.actions
  end
end
