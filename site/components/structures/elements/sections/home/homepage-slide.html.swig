<section id="{{ section.id }}" class="homepage-slide">
  <h3>{{ section.title }}</h3>

  <aside>
    <div class="title">
      <h2>{{ section.title | replace(' ', ' <br/> ', 'g') | safe }}</h2>
    </div>
  </aside>

  {% if section.id %}
    {% set article = '../../articles/home/' + section.id + '/' +  section.id + '.html.swig' %}
    {% include article %}
  {% endif %}
</section>
