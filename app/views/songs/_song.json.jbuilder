json.extract! song, :id, :name, :description, :artist_id, :language_id, :gender_id, :created_at, :updated_at
json.url song_url(song, format: :json)