class ApplicationController < ActionController::Base
  caches_page :show, :index
  before_filter { @page_caching = true }
end
