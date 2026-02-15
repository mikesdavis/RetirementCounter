---
layout: default
title: "Images 01-10"
---

<h1>Images 01–10</h1>

<div class="image-gallery">
{% assign imgs = "01_app_days_only.png,02_app_breakdown.png,03_widget_small.png,04_app_all_features.png,05_widget_medium.png,06_settings_view.png,07_app_4_days_left.png,08_app_1_day_left.png,09_app_congrats.png,10_pro_upgrade.png" | split: "," %}
{% for img in imgs %}
  <figure>
    <img class="gallery-img" loading="lazy" src="{{ '/assets/images/' | append: img | relative_url }}" alt="{{ img }}">
    <figcaption>{{ img }}</figcaption>
  </figure>
{% endfor %}
</div>
