---
title: Home
---

{% extends "../../templates/default.html.swig" %}
{% block content %}


  {% for section in index.sections %}
    {% include '../../elements/sections/home/homepage-slide.html.swig' %}
  {% endfor %}


{% endblock %}
