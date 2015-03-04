{% extends "../../templates/home.html.swig" %}
{% block content %}

  <section id="header">
    <h3>design & code</h3>
  </section>

  <section id="content">
    <aside>
      <h2>Clean<br>User<br/>Interfaces</h2>
    </aside>

    <article>
      <h3>Article</h3>

      {% set image = index.images | first %}
      {% include '../../images/atoms/figure.html.swig' %}

    </article>
  </section>

  <section id="footer">
    <h3>metamn</h3>
  </section>

{% endblock %}
