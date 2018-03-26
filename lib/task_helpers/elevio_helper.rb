module ElevioHelper
  def self.call_elevio
    request = Typhoeus::Request.new(
      "https://api.elev.io/v1/articles?status=published&page_size=500",
      method: :get,
      params: { field1: "a field" },
      headers: { 'x-api-key' => "#{ENV['API_KEY']}", 'Authorization'=> "Bearer #{ENV['JWT']}" }
    )
    request.run
    response = JSON.parse(request.response.body)
    articles = response["articles"]

    # ELEVIO'S API IS PAGINATED
    # THIS ONLY PULLS BACK THE FIRST PAGE
    # BUT PAGE SIZE IS SET TO 400, SO PROB NOT AN ISSUE

  end
end


