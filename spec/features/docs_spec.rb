# coding: utf-8
require 'spec_helper'

feature 'redirect legacy javacript-api routes' do
  it "redirects /js-api to /javascript-api/usage" do
    visit '/js-api'
    expect(current_url).to eq "http://docs.sublimevideo.dev/javascript-api/usage"
  end

  it "redirects /javacript-api to /javascript-api/usage" do
    visit '/javascript-api'
    expect(current_url).to eq "http://docs.sublimevideo.dev/javascript-api/usage"
  end
end

feature 'redirect legacy custom-start-view routes' do
  it "redirects /customizing-the-initial-play-button to /custom-start-view" do
    visit '/customizing-the-initial-play-button'
    expect(current_url).to eq "http://docs.sublimevideo.dev/custom-start-view"
  end

  it "redirects /custom-play-button to /custom-play-button" do
    visit '/custom-play-button'
    expect(current_url).to eq "http://docs.sublimevideo.dev/custom-start-view"

    visit '/custom-play-button'
    expect(current_url).to eq "http://docs.sublimevideo.dev/custom-start-view"
  end
end

feature 'redirect legacy autoplay routes' do
  it "redirects /autoplay-video-upon-page-load to /settings/player-settings#autoplay" do
    visit '/autoplay-video-upon-page-load'
    expect(current_url).to eq "http://docs.sublimevideo.dev/settings/player-settings"
  end

  it "routes /autoplay" do
    visit '/autoplay'
    expect(current_url).to eq "http://docs.sublimevideo.dev/settings/player-settings"
  end
end

feature 'redirect legacy loop routes' do
  it "redirects /loop-a-video to /settings/player-settings#on-end" do
    visit '/loop-a-video'
    expect(current_url).to eq "http://docs.sublimevideo.dev/settings/player-settings"
  end
end

feature 'redirect legacy back-to-initial-state-on-end routes' do
  it "redirects /returning-to-the-initial-state-once-video-playback-ends to /settings/player-settings#on-end" do
    visit '/returning-to-the-initial-state-once-video-playback-ends'
    expect(current_url).to eq "http://docs.sublimevideo.dev/settings/player-settings"
  end
end


feature 'redirect other legacy routes' do
  it "redirect /ssl to /player-faq#use-sublimevideo-in-ssl-site" do
    visit '/ssl'
    expect(current_url).to eq "http://docs.sublimevideo.dev/player-faq"
  end

  it "redirect /put-video-in-a-floating-lightbox to /lightbox" do
    visit '/put-video-in-a-floating-lightbox'
    expect(current_url).to eq "http://docs.sublimevideo.dev/lightbox"
  end

  it "redirect /faq to /player-faq" do
    visit '/faq'
    expect(current_url).to eq "http://docs.sublimevideo.dev/player-faq"
  end

  it "redirect /real-time-stats to /addons/stats" do
    visit '/real-time-stats'
    expect(current_url).to eq "http://docs.sublimevideo.dev/addons/stats"
  end

  it "redirect /optimize-for-stats to /addons/stats" do
    visit '/optimize-for-stats'
    expect(current_url).to eq "http://docs.sublimevideo.dev/addons/stats"
  end

  it "redirect /supported-browsers-and-platforms to /supported-platforms" do
    visit '/supported-browsers-and-platforms'
    expect(current_url).to eq "http://docs.sublimevideo.dev/supported-platforms"
  end
end

feature "shortcut redirects" do
  it "redirects root to /quickstart-guide" do
    visit '/'
    expect(current_url).to eq "http://docs.sublimevideo.dev/quickstart-guide"
  end

  it "redirects /javascript-api to /javascript-api/usage" do
    visit '/javascript-api'
    expect(current_url).to eq "http://docs.sublimevideo.dev/javascript-api/usage"
  end

  it "redirects /settings to /settings/usage" do
    visit '/settings'
    expect(current_url).to eq "http://docs.sublimevideo.dev/settings/usage"
  end

  it "redirects /embeds to /addons/embed" do
    visit '/embeds'
    expect(current_url).to eq "http://docs.sublimevideo.dev/addons/embed"
  end
end

feature "viewable pages" do
  it "renders encode-videos-for-the-web" do
    visit '/encode-videos-for-the-web'
    expect(current_url).to eq "http://docs.sublimevideo.dev/encode-videos-for-the-web"
  end

  it "renders player-faq" do
    visit '/player-faq'
    expect(current_url).to eq "http://docs.sublimevideo.dev/player-faq"
  end

  it "renders service-faq" do
    visit '/service-faq'
    expect(current_url).to eq "http://docs.sublimevideo.dev/service-faq"
  end

  it "renders lightbox" do
    visit '/lightbox'
    expect(current_url).to eq "http://docs.sublimevideo.dev/lightbox"
  end

  it "renders quickstart-guide" do
    visit '/quickstart-guide'
    expect(current_url).to eq "http://docs.sublimevideo.dev/quickstart-guide"
  end

  it "renders supported-platforms" do
    visit '/supported-platforms'
    expect(current_url).to eq "http://docs.sublimevideo.dev/supported-platforms"
  end

  it "renders troubleshooting" do
    visit '/troubleshooting'
    expect(current_url).to eq "http://docs.sublimevideo.dev/troubleshooting"
  end

  it "renders releases" do
    visit '/releases'
    expect(current_url).to eq "http://docs.sublimevideo.dev/releases"
  end

  it "renders write-proper-video-elements" do
    visit '/write-proper-video-elements'
    expect(current_url).to eq "http://docs.sublimevideo.dev/write-proper-video-elements"
  end
end

feature "legacy beta pages" do
  it "redirects to /encode-videos-for-the-web" do
    visit '/beta/encode-videos-for-the-web'
    expect(current_url).to eq "http://docs.sublimevideo.dev/encode-videos-for-the-web"
  end

  it "redirects to /player-faq" do
    visit '/beta/player-faq'
    expect(current_url).to eq "http://docs.sublimevideo.dev/player-faq"
  end

  it "redirects to /service-faq" do
    visit '/beta/service-faq'
    expect(current_url).to eq "http://docs.sublimevideo.dev/service-faq"
  end

  it "redirects to /lightbox" do
    visit '/beta/lightbox'
    expect(current_url).to eq "http://docs.sublimevideo.dev/lightbox"
  end

  it "redirects to /quickstart-guide" do
    visit '/beta/quickstart-guide'
    expect(current_url).to eq "http://docs.sublimevideo.dev/quickstart-guide"
  end

  it "redirects to /supported-platforms" do
    visit '/beta/supported-platforms'
    expect(current_url).to eq "http://docs.sublimevideo.dev/supported-platforms"
  end

  it "redirects to /troubleshooting" do
    visit '/beta/troubleshooting'
    expect(current_url).to eq "http://docs.sublimevideo.dev/troubleshooting"
  end

  it "redirects to /releases" do
    visit '/beta/releases'
    expect(current_url).to eq "http://docs.sublimevideo.dev/releases"
  end

  it "redirects to /write-proper-video-elements" do
    visit '/beta/write-proper-video-elements'
    expect(current_url).to eq "http://docs.sublimevideo.dev/write-proper-video-elements"
  end
end
