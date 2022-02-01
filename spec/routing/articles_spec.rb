require 'rails_helper'

RSpec.describe '/articles routes' do
  it 'routes to articles#index' do
    aggregate_failures do  # because I want to run all the expectations instead of only until the first failure
      expect(get '/articles').to route_to('articles#index')
      expect(get '/articles?page[number]=3').to route_to('articles#index', page: { 'number' => '3' })
    end
  end

  it 'routes to articles#show' do
    expect(get '/articles/1').to route_to('articles#show', id: '1')
  end
end
