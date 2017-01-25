# Created by Victor H. Ruelas-Rivera on 12/21/16.
# US EPA National Center for Computational Toxicology

require 'json'
module ReactHelper
  # Props should be a Ruby hash
  def react_component(component_name, props = {})
    content_tag(
        :div,
        nil,
        class: 'react-component-target',
        data: {
            react_class: component_name,
            react_props: props.to_json
        }
    )
  end
end