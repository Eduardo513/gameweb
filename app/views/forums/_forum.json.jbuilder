json.extract! forum, :id, :characterName, :characterPicture, :created_at, :updated_at
json.url forum_url(forum, format: :json)