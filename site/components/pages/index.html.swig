{% extends "../templates/default.html.swig" %}
{% block content %}


  {% for section in index.sections %}
    {% include '../structures/sections/home/homepage-slide.html.swig' %}
  {% endfor %}


{% endblock %}
