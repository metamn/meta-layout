<nav id="secondary-menu">
  <h3>Secondary menu</h3>

  <ul>
    {% for menu in site.secondary_menu %}
      <li>
        <a href="{{ site.url }}{{ menu.url }}" title="{{ menu.title }}">{{ menu.title }}</a>
      </li>
    {% endfor %}
  </ul>
</nav>
