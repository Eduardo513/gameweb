json.extract! leaderboard, :id, :rankDivision, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)