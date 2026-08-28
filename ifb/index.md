---
layout: home
title: IFB
---

{% include site_deprecation_notice.html redirect="https://galaxyproject.org/ifb/" %}

<div class="home">
    <div class="row eu-image-box">
        <a href="https://elixir-europe.org/about-us/who-we-are/nodes/france" target="_blank">
            <img src="/assets/media/ifb/elixir_node_france.png"  class="img-responsive eu-image"/>
        </a>
        <a href="https://www.france-bioinformatique.fr/" target="_blank">
            <img src="/assets/media/ifb/ifb_small.png"  class="img-responsive eu-image"/>
        </a>
    </div>
    <br />
    <div style='text-align: center'>
        <a href="https://usegalaxy.fr/" target="_blank">
            <img src="/assets/media/ifb/usegalaxy-fr.png" />
        </a>
    </div>


    {% include carousel_before.html pages=4 %}
        {% include home_carousel_emc_galaxy.html %}
        {% include home_carousel_ifb_subdomain_workflow4metabolomics.html %}
        {% include home_carousel_ifb_subdomain_proteore.html %}
        {% include home_carousel_training_materials.html %}
        {% include home_carousel_ifb_galaxycat.html %}
        {% include home_carousel_ifb_team.html %}
    {% include carousel_after.html %}

    {% include home_news_events.html %}
    {% include home_done.html %}
</div>
