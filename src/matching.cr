module Matching
  VERSION = "0.1.0"

  macro matching(value, **pattern)
    %matching = true
    {% for k, v in pattern %}
      {% unless v.class_name.downcase == "var" %}
        if !%matching || {{v}} != {{value}}.{{k.id}}
          %matching = false
        end
      {% end %}
    {% end %}

    {% for k, v in pattern %}
      {% if v.class_name.downcase == "var" %}
        {{v}} = %matching ? {{value}}.{{k.id}} : nil
      {% end %}
    {% end %}
  end
end
