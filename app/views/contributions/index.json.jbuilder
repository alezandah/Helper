json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :first_name, :last_name, :email, :comment, :donation_amount, :campaign_id
  json.url contribution_url(contribution, format: :json)
end
