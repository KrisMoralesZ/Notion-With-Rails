json.extract! page, :id, :title, :slug, :body, :parent_id, :account_id, :position, :created_at, :updated_at
json.url page_url(page, format: :json)
