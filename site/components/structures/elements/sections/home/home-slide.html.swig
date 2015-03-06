<section id="{{ section.id }}" class="home-slide">
  <h3>{{ section.title }}</h3>

  {% include '../../asides/home/home-slide-title.html.swig' %}

  {% if section.id %}
    {% set article = '../../articles/home/' + section.id + '/home-' +  section.id + '.html.swig' %}
    {% include article %}
  {% endif %}
</section>
