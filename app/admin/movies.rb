ActiveAdmin.register Movie do
  permit_params :title, :description, :category_id

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :category, as: :select
      f.actions
    end
  end
end
