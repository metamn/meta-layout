<nav id="main-menu">
  <h3>Main menu</h3>

  <ul>
    {% for menu in site.main_menu %}
      <li>
        <a href="{{ site.url }}{{ menu.url }}" title="{{ menu.title }}">{{ menu.title }}</a>
      </li>
    {% endfor %}
  </ul>
</nav>
