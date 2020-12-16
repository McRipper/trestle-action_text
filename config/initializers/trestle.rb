require "trestle/action_text/field"

Trestle.configure do |config|

  config.hook(:stylesheets) { stylesheet_link_tag "trestle/action_text" }

  config.hook(:javascripts) do
    javascript_include_tag("trestle/action_text")
  end

  config.form_field :rich_text_area, Trestle::ActionText::RichTextArea

  config.hook(:javascripts) do
    javascript_pack_tag 'trix', 'data-turbolinks-track': 'reload'
  end

end
