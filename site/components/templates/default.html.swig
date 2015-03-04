{% include "head.html.swig" %}

{% include "../structures/layers/base/base-layer.html.swig" %}

<!-- content layer cannot be included like base layer because {% block %} will be not passed to it -->
<section id="content-layer">
  <h3>Content layer</h3>
  {% block content %}{% endblock %}
</section>


{% include "foot.html.swig" %}
