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
          <img src="{{site.baseurl}}/img/{{project.category}}/{{project.logo}}" alt="">
          <h5 class="text-center">{{project.title}}</h5>
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