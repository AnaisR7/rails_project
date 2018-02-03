json.extract! commentaire, :id, :contenu, :date, :auteur, :created_at, :updated_at
json.url commentaire_url(commentaire, format: :json)
