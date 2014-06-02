ActiveAdmin.register Book do
  config.sort_order = "rank_asc"
  config.per_page = 100
  config.filters = false

  index do
    column :title
    column :author
    column :isbn_10
    column :isbn_13
    column :rank
    default_actions
  end
end
