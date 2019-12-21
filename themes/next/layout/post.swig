{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ page.title }} | {{ title }}{% endblock %}

{% block content %}

  <div class="posts-expand">
    {{ partial('_macro/post.swig', {post: page}) }}
  </div>
  <div id="disqus_thread"></div>
  <script>

  var disqus_config = function () {
    this.page.url = window.location.href;
    this.page.identifier = "{{ page.title }}";
  };
  (function() { // DON'T EDIT BELOW THIS LINE
  var d = document, s = d.createElement('script');
  s.src = 'https://bohan.disqus.com/embed.js';
  s.setAttribute('data-timestamp', +new Date());
  (d.head || d.body).appendChild(s);
  })();
  </script>
  <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}
