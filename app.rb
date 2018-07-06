require_relative 'models'

require 'roda'

class App < Roda
  plugin :public
  plugin :json
  route do |r|
    r.root do
      response['Content-Type'] = 'application/json'
      { foo: DB[:contacts].all }.to_json
    end
  end
end
