json.extract! review, :id, :star_rating, :title, :content, :created_at, :updated_at
json.url review_url(review, format: :json)
