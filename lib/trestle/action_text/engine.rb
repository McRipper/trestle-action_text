module Trestle
  module ActionText
    class Engine < ::Rails::Engine
      config.assets.precompile << "trestle/action_text.js" << "trestle/action_text.scss"
    end
  end
end
