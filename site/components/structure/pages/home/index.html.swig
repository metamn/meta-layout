---
title: Home
---

{% extends "../../templates/default.html.swig" %}
{% block content %}


  {% for section in index.sections %}
    {% include '../../elements/sections/home/home-slide.html.swig' %}
  {% endfor %}


{% endblock %}
