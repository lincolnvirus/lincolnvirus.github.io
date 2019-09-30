---
layout: chestnyy-eyb-tpl
category: chestnyy_eyb
logo: comics.png
order: 2

title: Комиксы
breadcrumb: Комиксы

meta: Наши партнёры самые известные и крупные издательства и поставщики товаров.


lang: ru
ref: comics
---

<div id="itemContainer" class="row">
    {% assign projs = (site.projects | where:"lang", page.lang | sort:"order" | sort:"title") %}    
    {% for project in projs %}
    {% if project.category == page.ref %}
      {% if project.logo %}
      <div class="col-lg-6 itemcard">
        	<div class="row">
	        	<div class="col-lg-12">
	        		<h5 class="text-center"><a href="{{site.baseurl}}{{project.url}}">{{project.title}}</a></h5>
	        	</div>
	        	<div class="col-lg-6">
	          		<img src="{{site.baseurl}}/img/{{project.category}}/{{project.logo}}" alt="">
	          	</div>
	          	<div class="col-lg-6">
	          		{{project.short}}
	          	</div>
          	</div>
      </div>
      {% else %}
      <div class="col-lg-6">
        <a href="{{site.baseurl}}{{project.url}}" class="technical-card">
          <h2 class="text-center">{{project.title}}</h2>
        </a>
      </div>
      {% endif %}
    {% endif %}
    {% endfor %}
</div>
<style>
	.hero { height: 100%; padding: 20px 100px !important; }
	.hero>div { height: 100%; padding-bottom: 30px; background: url('/anim/bg_window.png');background-size: 100% 100%; }
	#itemContainer {  padding: 15px; margin: 0px; padding: 50px 50px 50px 30px; height: 100%; overflow: scroll; justify-content: unset; }
	.col-lg-4 a, .col-lg-6 a { background: none; }
	.technical-card, .friends-card { box-shadow: none; }
	h5 { margin-bottom: 25px; height: 45px; display: flex; align-items: center; }
	h5 a { display: block; }
	.itemcard { margin-bottom: 50px; }
</style>