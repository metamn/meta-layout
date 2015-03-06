---
title: Home
---

{% extends "../../templates/default.html.swig" %}
{% block content %}

  <div class="reveal">
    <div class="slides">
      <section>
        {% for section in index.sections %}
          {% include '../../elements/sections/home/home-slide.html.swig' %}
        {% endfor %}
      </section>
    </div>
  </div>


{% endblock %}
