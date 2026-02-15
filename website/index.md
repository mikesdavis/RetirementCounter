---
layout: default
title: "Retirement Countdown"
show_feature_graphic: true
---

## Core Features

<div class="feature-grid">
	<article class="card">
		<h3>Live retirement countdown</h3>
		<p class="muted">Track the exact time remaining until your retirement date in years, months, and days, presented in a clean, high-contrast interface.</p>
	</article>
	<article class="card">
		<h3>Clear time breakdowns</h3>
		<p class="muted">View remaining time by year, month, and day to help with budgeting, career decisions, and transition planning.</p>
	</article>
	<article class="card">
		<h3>Milestone tracking</h3>
		<p class="muted">Highlight key milestones (annual, monthly, weekly, and daily) so you can celebrate progress instead of just waiting for the finish line.</p>
	</article>
	<article class="card">
		<h3>Home screen widgets</h3>
		<p class="muted">Keep an at-a-glance view of your countdown directly on your home screen with automatic updates.</p>
	</article>
</div>

## App screenshots

<a id="screenshots"></a>
<div class="home-image-gallery">
{% assign imgs = "01_app_days_only.png,02_app_breakdown.png,03_widget_small.png,04_app_all_features.png,05_widget_medium.png,06_settings_view.png,07_app_4_days_left.png,08_app_1_day_left.png,09_app_congrats.png,10_pro_upgrade.png" | split: "," %}
{% for img in imgs %}
	<figure>
		<img class="gallery-img" loading="lazy" src="{{ '/assets/images/' | append: img | relative_url }}" alt="{{ img }}">
	</figure>
{% endfor %}
</div>

## Professional Tools (One-time $2.99)

Upgrade once to unlock additional tools designed for detailed retirement planning.

<div class="feature-grid">
	<article class="card">
		<h3>Workdays calculator</h3>
		<p class="muted">Compute remaining business days (excluding weekends) so you can plan projects, handoffs, and staffing with realistic timelines.</p>
	</article>
	<article class="card">
		<h3>Career progress view</h3>
		<p class="muted">Visualize how much of your career is behind you versus ahead with a simple, data-driven progress bar.</p>
	</article>
	<article class="card">
		<h3>Milestone history</h3>
		<p class="muted">Review past milestones and important dates to see how your plan has evolved over time.</p>
	</article>
	<article class="card">
		<h3>Configurable notifications</h3>
		<p class="muted">Enable optional, local notifications for key milestones so you never miss an important date.</p>
	</article>
</div>

## Why Retirement Countdown feels trustworthy

- Privacy first: countdown data and preferences are stored locally on your device.
- No account needed: start planning immediately — no sign-up flow or passwords.
- Lightweight: designed to be fast, battery-friendly, and unobtrusive.
- Simple pricing: a single, optional one-time Pro upgrade. No subscriptions.

## Who it’s for

Retirement Countdown is built for professionals, planners, and teams who want a reliable, easy-to-read view of the time remaining until retirement — from long-range planning to the final stretch.

---

## FAQ

<a id="faq"></a>

<section class="faq" markdown="1">

### What does Retirement Countdown do?

Retirement Countdown displays the time remaining to your selected retirement date in years, months, and days. It also offers milestone tracking, professional tools, and a glanceable home screen widget.

### How accurate is the countdown?

The countdown is computed from the retirement date you set. It reports remaining time in years, months, and days for a clear planning view (it does not focus on seconds or sub-minute precision).

### Is my data private?

Yes. All countdown data and preferences are stored locally on your device. No account is required and the app does not transmit personal data by default.

### Is there a cost?

Core countdown functionality is free. A one-time Pro upgrade (listed in the app) unlocks the workdays calculator, career progress view, milestone history, and notifications.

### Which platforms are supported?

Retirement Countdown is available as a mobile app. Check your device's app store for availability and platform-specific details.

### How do I get support?

For questions or to report issues, please open an issue in this repository or contact the project maintainers using the support details in the app store listing.

</section>
