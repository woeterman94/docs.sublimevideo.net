require 'spec_helper'

describe PagesController do

  # Rails issue with advanced constraint https://github.com/dchelimsky/rspec-rails/issues/5
  it { get(with_subdomain('docs', 'quickstart-guide')).should route_to('pages#show', page: 'quickstart-guide') }
  it { get(with_subdomain('docs', 'javascript-api/usage')).should route_to('pages#show', page: 'javascript-api/usage') }

end
