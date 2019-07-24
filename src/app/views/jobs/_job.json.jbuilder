json.extract! job, :id, :title, :amount, :content, :urgency, :address, :employer_id, :created_at, :updated_at
json.url job_url(job, format: :json)
