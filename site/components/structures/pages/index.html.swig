{% extends "../../templates/default.html.swig" %}
{% block content %}


  {% for section in index.sections %}
    {% include '../sections/home/homepage-slide.html.swig' %}
  {% endfor %}


{% endblock %}
