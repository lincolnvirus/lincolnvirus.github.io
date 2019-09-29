---
layout: chestnyy-eyb-tpl
category: chestnyy_eyb
logo: books.png
order: 3

title: Книги
breadcrumb: Книги

meta: Наши партнёры самые известные и крупные издательства и поставщики товаров.


lang: ru
ref: books
---

<div id="itemContainer" class="row">
    {% assign projs = (site.projects | where:"lang", page.lang | sort:"order" | sort:"title") %}    
    {% for project in projs %}
    {% if project.category == page.ref %}
      {% if project.logo %}
      <div class="col-lg-6">
        <a href="{{site.baseurl}}{{project.url}}" class="technical-card tc-w-l">
        	<div class="row">
	        	<div class="col-lg-12">
	        		<h5 class="text-center">{{project.title}}</h5>
	        	</div>
	        	<div class="col-lg-6">
	          		<img src="{{site.baseurl}}/img/{{project.category}}/{{project.logo}}" alt="">
	          	</div>
	          	<div class="col-lg-6">
	          		{{project.content}}
	          	</div>
          	</div>
        </a>
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
	.hero { height: 100%; padding: 20px 100px !important;}
	.hero>div { height: 100%; overflow: scroll; }
	#itemContainer { background: url('/anim/bg_window.png'); padding: 15px; background-size: 100% 100%; margin: 0px;}
	.col-lg-4 a, .col-lg-6 a { background: none; }
	.technical-card, .friends-card { box-shadow: none; }
</style>