---
layout: galaxy
---

{% include notices.html %}
{% include maintenance.html %}
{% include home_quote.html %}
{% include home_news_events-galaxy.html %}
{% include jobs_graph.html %}

{% include carousel_before.html pages=7 %}
  {% include home_carousel_galaxy.html %}
  {% include home_carousel_usegalaxy_eu_quota.html %}
  {% include home_carousel_involved.html %}
  {% include home_carousel_training.html %}
  {% include home_carousel_tiaas.html %}
  {% include home_carousel_acknowledgments.html %}
  {% include home_carousel_data_policy.html %}
{% include carousel_after.html %}

{% include home_done.html %}

<script>
  ((window.gitter = {}).chat = {}).options = {
    room: 'usegalaxy-eu/Lobby'
  };
</script>
<script src="https://sidecar.gitter.im/dist/sidecar.v1.js" async defer></script>
