json.extract! inquiry, :id, :company_name, :contact_name, :email, :phone, :company_size, :industry, :services_id, :budget, :country, :city, :address, :about, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
