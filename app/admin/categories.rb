ActiveAdmin.register Category, as: 'MovieCategories' do
  permit_params :name

  index do
    column :name
    actions
  end
end
