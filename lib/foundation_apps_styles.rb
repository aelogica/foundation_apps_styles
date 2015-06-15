require 'foundation_apps_styles/version'

module FoundationAppsStyles
  class Engine < Rails::Engine
    initializer :assets do |config|
      all_assets = Dir.glob File.join('scss')
      all_assets += Dir.glob File.join('iconic')
      all_assets.each {|path| path.gsub!(/.(scss)$/, '')}
      Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
      Rails.application.config.assets.precompile << /\.(?:png)$/
      Rails.application.config.assets.precompile += all_assets
    end
  end
end
