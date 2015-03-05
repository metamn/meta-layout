<section id="{{ section.id }}" class="slide">
  <h3>{{ section.title }}</h3>

  <aside>
    <div class="title">
      <h2>{{ section.title | replace(' ', ' <br/> ', 'g') | safe }}</h2>
    </div>
  </aside>

  {% if section.id %}
    {% set article = '../../articles/home/' + section.id + '.html.swig' %}
    {% include article %}
  {% endif %}
</section>
