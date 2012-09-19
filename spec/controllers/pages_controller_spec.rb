require 'spec_helper'

describe PagesController do

  %w[stable beta].each do |version|
    context "#{version} page" do
      %w[quickstart-guide javascript-api/usage].each do |page|
        it "responds with success to GET :show, on #{page} page" do
          get :show, version: version, page: page
          response.should render_template("pages/#{version}/#{page}")
        end
      end
    end
  end

end
