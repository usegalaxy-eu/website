---
layout: home
---

<div class="home">
  <div class="row" id="splash-row">
    <div class="col-sm-12">
      <div class="carousel slide" data-ride="carousel" id="splash-box">
        <div class="carousel-inner" role="listbox">
          {% include home_carousel_galaxy.html %}

          <div class="item carousel-item jumbotron">
            <h2 class="display-3">Our services</h2>
            <p>The Freiburg Galaxy Team is offering several services to enable <strong>reproducible</strong> and <strong>accessible</strong> research for everyone:</p>
            <ul>
              <li><i class="fa fa-server"></i> <a href="/freiburg/services#galaxy-server">Galaxy server</a></li>
              <li><i class="fa fa-graduation-cap"></i> <a href="/freiburg/services#training">Training</a></li>
              <li><i class="fa fa-cube"></i> <a href="/freiburg/services#virtualization-for-sensitive-data">Virtualization for Sensitive Data</a></li>
              <li><i class="fa fa-table"></i> <a href="/freiburg/services#data-analysi">Data analysis</a></li>
              <li><i class="fa fa-cogs"></i> <a href="/freiburg/services#tool-integration">Tool integration</a></li>
              <li><i class="fa fa-cloud"></i> <a href="/freiburg/services#scientific-computing-cloud">Scientific computing cloud</a></li>
            </ul>
          </div>
          
          {% include home_carousel_training.html %}
          {% include home_carousel_acknowledgments.html %}
        </div>
        <a class="left carousel-control" href="#splash-box" role="button" data-slide="prev">
          <span class="icon-prev" aria-hidden="true"></span>
          <span class="sr-only">
            <previous></previous>
          </span>
        </a>
        <a class="right carousel-control" href="#splash-box" role="button" data-slide="next">
          <span class="icon-next" aria-hidden="true"></span>
          <span class="sr-only">
            <next></next>
          </span>
        </a>
      </div>
    </div>
  </div>

  {% include home_news_events.html %}
  {% include home_done.html %}
</div>