ActiveAdmin.register Category do
  permit_params :name, :description, :parent_category_id

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :parent_category
    end
    f.actions
  end
end
