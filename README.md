{% assign doclist = site.posts %}
<ul>
{% for post in site.posts %}
<li>{{ post.date }} <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

