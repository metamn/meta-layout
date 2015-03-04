{% extends "../../templates/default.html.swig" %}
{% block content %}

  <section class="slide">
    <aside>
      <h2>Clean<br>User<br/>Interfaces</h2>
    </aside>

    <article>
      <h3>Article</h3>

      {% set image = index.images | first %}
      {% include '../../images/atoms/figure.html.swig' %}
    </article>
  </section>



{% endblock %}
