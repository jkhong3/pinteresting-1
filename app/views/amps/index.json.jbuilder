json.array!(@amps) do |amp|
  json.extract! amp, :id
  json.url amp_url(amp, format: :json)
end
