json.extract! product, :id, :name, :country_of_origin_id, :pdate, :active_status, :sort, :created_at, :updated_at
json.url product_url(product, format: :json)
