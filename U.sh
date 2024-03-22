#!/bin/bash
git add .
git commit -m " 💠 121-Django/Practice_01-30/Practice-13 Online Shop Image-16 Shopping cart
                
                Shopping cart           
                Sessions
                Cookies
                
                http: stateless memory

1- write in a directory Terminal 
2- Create private/public repository in your account github
3- in Terminal -> echo '# OnlineShope' >> README.md
4- in Terminal -> git init
5- in Terminal -> git add README.md
6-  in Terminal -> git commit -m 'first commit'
7-  in Terminal -> git branch -M main
8-  in Terminal -> git remote add origin git@github.com:⛔YOUR_USER_NAME⛔/OnlineShope.git
9-  in Terminal -> git push -u origin main
10- Check your repository link, make sure that will changed
11- paste everything from directory you cloned in step 1 from this link https://github.com/hadiMh/Django_Docker_with_PostgreSql
12- paste this file from this link in U.sh 
13- change permission U.sh by this command in Terminal
14- Check permission file by this command in Terminal 
15- run this for first time use docker-compose
16- write in Terminal -> docker-compose up --build
17- Run strong VPN and write again in Terminal 
18- write Ctrl + C key and shut it down
19- Run again (strong VPN activated)
20- Check in browser should see default django page
💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠💠
BEFORE migrate
⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔
If for any reason you have to rebuild and delete containers web + databas 
You need run again these command before to continue
docker-compose up --build
docker-compose exec web python manage.py makemigrations
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
21- in Terminal -> docker-compose exec web python manage.py startapp accounts 
22- add accounts in config/settings.py > INSTALLED_APPS list
23-first docker rm containers and second rmi image
24- create fake venv, write in Terminal
25- Create .gitignore file and add this into it
26- import this into accounts/models.py
27- create new class in accounts/models.py
28- Create forms.py in accounts directory
29- import this in accounts/forms.py
30- Create new class in accounts/forms.py
31- add this in config/settings.py
32- Create new class in accounts/forms.py
33- import this into accounts/admin.py
34- create new class in accounts/admin.py
35- in Terminal -> docker-compose exec web python manage.py makemigrations
36- in Terminal -> docker-compose exec web python manage.py migrate
37- in Terminal -> docker-compose exec web python manage.py createsuperuser
38- in Terminal -> docker-compose up --build
💠💠💠 For All Projects 💠💠💠
    1- in Terminal
    docker-compose up --build
    ================================================
    2- in Terminal
    Ctrl + C key
    ================================================
    3- in Terminal
    docker start 2_django_haji_web_1 2_django_haji_db_1 
    OR
    docker start web_Name dataBase_Name
    ================================================
    4- in Terminal 
    docker-compose exec web python manage.py makemigrations
    ================================================
    5- in Terminal 
    docker-compose exec web python manage.py migrate
    ================================================
    6- in Terminal 
    docker-compose up --build
    ================================================
    7- in another Terminal 
    docker-compose exec web python manage.py createsuperuser
    ================================================
    8- in browser 
    http://127.0.0.1:8000/admin/login/?next=/admin/

    Output, it must be implemented correctly
39- in Terminal -> docker-compose exec web python manage.py startapp pages
40- add pages in config/settings.py > INSTALLED_APPS list -> 'pages',
41- import this into pages/views.py -> from django.views.generic import TemplateView
42- create new two classes into pages/views.py
43- Create tempaltes/home.html in current directory of project -> tempaltes/home.html
44- write in tempaltes/home.html -> Home Page is Here Dear YOUR_NAME :)
45- write this in config/settings.py TEMPLATES list -> 'DIRS': [str(BASE_DIR.joinpath('templates'))],
46- Rebuild Server -> docker-compose up --build
47- Create tempaltes/pages/aboutus.html in pages directory -> templates/pages/aboutus.html
48- Write in tempaltes/pages/aboutus.html -> About Us YOU from Earth
49- import this in config/urls.py -> from django.urls import include
50- write into config/urls.py > urlpatterns list -> path('', include('pages.urls')),
51- Create urls.py in pages directory -> urls.py
52- import in pages/urls.py
53- Create urlpatterns list in pages/urls.py
54- Rebuild server in Terminal -> docker-compose up --build
55- Remove previous images maybe are like this IDs
56- Check browser
57- write this in config/settings.py in urlpatterns list
58- Create urls.py in accounts directory
59- import into accounts/urls.py
60- Create urlpatterns list in accounts/urls.py
61- import into accounts/views.py
62- Create new class into accounts/views.py
63- Create registration/login.html AND registration/signup.html in templates current directory project
64- write these in templates/registration/signup.html
65- write these in templates/registration/login.html
66- Rebuild Server -> docker-compose up 
67- Check browser -> http://127.0.0.1:8000/admin/
68- Check this link -> http://127.0.0.1:8000/accounts/login/
69- Check this link -> http://127.0.0.1:8000/accounts/logout/
70- Check this link -> http://127.0.0.1:8000/accounts/signup/
71- write this in config/settings.py
72- make sure server is true running like this
73- Check these links should be redirected after login/logout
🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑🥑
You Can write TEST for everything in this step in test.py file Apps 
74- in another Terminal (Server should be acticeted now) -> docker-compose exec web pip install django-crispy-forms
75- Check requirements.txt must be like this 
76- in another Terminal  (Server should be acticeted now) -> docker-compose exec web pip freeze > requirements.txt
77- Check requirements.txt must be Changed like this 
78- write this into config/settings.py in INSTALLED_APPS > after Djangop default Apps
79- for convinience way to after this step, write this in Terminal -> pipenv install
80- for running any command for (docker-compose exec web ...) in terminal 
🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲🧲
From now on, execute Docker-compose commands inside this terminal,
when the pipenv environment is not active.
81- Create _base.html in templates directory -> _base.html
82- write html:5 in file _base.html and Press Enter(return)
83- search in browser 'bootstrap'
84- Copy 'Bootstrap CSS' from this link -> https://getbootstrap.com/docs/5.3/getting-started/introduction/
85- Paste that in head tag of _base.html
86- Copy <script> tag for our JavaScript bundle from this link -> https://getbootstrap.com/docs/5.3/getting-started/introduction/
87- Paste that end of body tag in _base.html
88- Change title of _base.html like this -> <title>{% block page_title %}{% endblock %}</title>
89- inside body tag of _base.html add this
90- change inside home.html like this
91- Copy all of home.html -> Paste on login.html
92- Change login.html like these
93- Copy all login.html -> Paste on signup.html
94- Change signup.html like these
95- Check site in broswer all fonts should be changed -> http://127.0.0.1:8000/
96- in end of config/settings.py
97- add this in after {extends} login.html like this
98- Change this line in login.html like this
99- Apply the previous two steps to the signup.html page
100- Check these -> 100-1 AND 100-2
101- add this in config/settings.py INSTALLED_APPS list 
102- add this in config/settings.py like this
103- Check these links should be changed -> 103-1 AND 103-2
104- Check these link Django All Auth
105- before run this command, be sure docker is running -> 105-1 AND 105-2 AND 105-3
⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔
Be careful!
Every package you add means you are adding a vulnerability to your site. 
106- Check requirements.txt should be like this
107- after Installation 'django-allauth' write this in that specific Terminal without any environment
108- Check requirements.txt should be like this
109- write this for syncing pipenv with requirements.txt
110- add these into config/settings.py > INSTALLED_APPS list after previous Third Parties 
111- add these in end of config/settings.py
112- add thi in config/settings.py > MIDDLEWARE list after default django Middlewares
113- Delete these in config/urls.py > urlpatterns list
114- Write new path in config/urls.py > urlpatterns list -> path('accounts/', include('allauth.urls')),
115- Rename this file 'registration' to account -> account
116- Create .dockerignore in current directory of project -> .dockerignore
117- write in .dockerignore 
118- Rebuild Server
119- Check these two links , they must have changed.
120- Delete these from accounts/views.py
121- Delete these from accounts/urls.py
122- write this end of config/settings.py under '# For All Auth App'
123- Create logout.html in tempaltes/account directory -> logout.html
124- Copy all login.html -> Paste in logout.html
125- Change logout.html like these
126- Try to login should get this error after login
127- in Terminal -> docker-compose exec web python manage.py migrate
(optional) 128- Maybe need to restart server maybe not
129- Check and login again. It must be implemented correctly. -> http://127.0.0.1:8000/accounts/login/
130- Check for logout correctly. It must be implemented correctly. -> http://127.0.0.1:8000/accounts/logout/
131- add these under all auth: config/settings.py -> ACCOUNT_SIGNUP_PASSWORD_ENTER_TWICE = False
132- Check this link The site forces the user to enter a password once. -> http://127.0.0.1:8000/accounts/signup/
133- Create new user for testing Email in Terminal
134- Check Terminal was running docker in previous step should printed like these 
135- write in config/settings.py after # For All Auth App Settings -> ... ACCOUNT_USERNAME_REQUIRED = False
136- write in config/settings.py after # For All Auth App Settings -> ... ACCOUNT_AUTHENTICATION_METHOD = 'email'
137- write in config/settings.py after # For All Auth App Settings -> ... ACCOUNT_EMAIL_REQUIRED = True
138- write in config/settings.py after # For All Auth App Settings -> ... ACCOUNT_UNIQUE_EMAIL = True
139- Rebuild Server -> docker-compose up --build
140- Check this link, should be shows just two things = (Email + Password once) -> http://127.0.0.1:8000/accounts/signup/
141- in broswer go to admin panel -> http://127.0.0.1:8000/admin/
142- in broswer go to users -> http://127.0.0.1:8000/admin/accounts/customuser/
143- Check account Username , You created in step 133 , Should be like this
144- Install this in another Terminal (Docker should be running right now) 
145- add previous step in requirements.txt by this command in Terminal 
146- write this in config/settings.py after imports -> from environs import Env
147- install again for pipenv, write in Terminal -> pipenv install -r requirements.txt
148- write these in config/settings.py, after step 146
149- Cut the values of SECRET_KEY without these signs '' like this
150- change value of SECRET_KEY like this -> SECRET_KEY = env('DJANGO_SECRET_KEY')
151- create new dependency in docker-compose.yml file after ports:...
152- create new environment in docker-compose.yml file after depends_on:...
153- If in values of SECRET_KEY was a $ sign repeat $ again after it like this -> django-insecure-b764$$#(&o4o((cvy!z^nsseq5@erq#e^0%5r5a(%c24*f^*sde
154- Rebuild Server -> docker-compose up --build
155- write new environment Variable in docker-compose after DJANGO_SECRET_KEY=...
156- change value of DEBUG in config/settings.py like this
157- change value of ALLOWED_HOSTS list in config/settings.py like this
158- Restart Server in Termial
159- Check this link in broswer
160- Create new Gmail for this tutorial(Check list)
161- go in that Gmail account
162- go in manage my account
163- find in security
⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔⛔
164- find 'Less secure app access' -> Turn On Access
165- write in config/settings.py after EMAIL_BACKEND
166- Restart Server
167- go in this link 
168- Copy that temporary fake email
169- create a new user in this link
170- change in config/settings.py after EMAIL_BACKEND
171- Create this directory in templates/account -> email
172- Create this file in templates/account -> email_confirmation_subject.txt
173- Create this file in templates/account/email -> email_confirmation_message.txt
174- Write these codes inside of templates/account/email/email_confirmation_subject.txt
175- Write these codes inside of templates/account/email/email_confirmation_message.txt
176- Create  new user again in this link in browser
177- Check Terminal , should got Email content like this
178- Click on this link from previous step
179- Create this file in tempaltes/account -> email_confirm.html
180- Write these inside tempaltes/account/email_confirm.html
181- Click on this link again, should be changed
182- Write these inside of _base.html
183- Change home.html like this
184- First logout from this link
185- Check this link in broswer, should added these two link = login and signup
186- Check these to links should jump to ligin/signup page
187- Change aboutus.html like this
188- Change _base.html like this
189- Change this _base.html like this
190- Write in Terminal -> docker-compose exec web python manage.py startapp products
191- Install products app in config/settings.py > INSTALLED_APPS list
192- Go into products/apps.py, Copy ProductsConfig function
193- change Install app address in config/settings.py > INSTALLED_APPS list. You can also write like this.
194- Create new model in products/models.py
195- Write in another Termial -> docker-compose exec web python manage.py makemigrations products
196- Check this address products/migrations/0001_initial.py
197- Write in another Termial -> docker-compose exec web python manage.py migrate
198- import this into products/views.py
199- Create new class into products/views.py
200- Create product_list.html file in products/templates/products/product_list.html -> templates/products/product_list.html
201- Write these into templates/products/product_list.html
202- Create urls.py in products directory(App) -> urls.py
203- import these into products/urls.py
204- Creat new urlpatterns list inside products/urls.py
205- Create new path inside config/urls.py after paths in urlpatterns list -> ... path('products/', include('products.urls')),
206- Restart server in Termial -> docker-compose up
207- Check this link , It must be implemented correctly. 
208- add these codes in content block inside of product_list.html
209- import into products/admin.py 
210- Create new class in products/admin.py
211- Restart server in Termial -> docker-compose up
212- Create new product in this link -> http://127.0.0.1:8000/admin/products/product/add/
213- go to products/models.py add the magic method end of Product class like this
214- check this link should pretty shows title products you created in previous steps -> http://127.0.0.1:8000/admin/products/product/
215- add list_display in products/admin.py in class of ProductAdmin
216- check this link should pretty shows title products you created in previous steps -> http://127.0.0.1:8000/admin/products/product/
217- Check this link should be shows all products you created before -> http://127.0.0.1:8000/products/
218- change products/views.py/ProductListView class like this
219- Restart Server -> docker-compose up
220- deactive a product in this link -> http://127.0.0.1:8000/admin/products/product/
221- go back in this link the deactivate product most be don't shows. -> http://127.0.0.1:8000/products/
222- Create new class for detail view of products in products/views.py
223- Create this file in products/templates/products/product_detail.html -> product_detail.html
224- write inside of product_detail.html these codes
225- Change this line in product_list.html
226- import ProductDetailView in products/urls.py -> from .views import ProductDetailView
227- Create new path in products/urls.py -> path('<int:pk>/', ProductDetailView.as_view(), name='product_detail'),
228- Check this link, Output, it must be implemented correctly: -> http://127.0.0.1:8000/products/1/
229- import into products/models.py -> from django.shortcuts import reverse
230- add end of Product class into products/models.py
231- add this to product_list.html -> <a href='{{ product.get_absolute_url }}'>
232- Restart Server in Terminal -> docker-compose up
233- Check this link and Click on a product you created, it should will be jump to detail view itself. -> http://127.0.0.1:8000/products/
234- import this in config/settings.py -> import os
235- Add this after STATIC_URL in config/settings.py
236- Create new directory in current directory project -> static
237- Create new directory in static/css
238- Copy and Paste your CSS files in static/css directory
239- add these in HEAD tag of _base.html
240- Add this to First line of _base.html -> {% load static %}
241- Add these to product_list.html
242- Go to this link, broswer content must be messy -> http://127.0.0.1:8000/products/
243- Change this line in _base.html
245- Rebuild Server
246- Add Images to static directory
247- Change this in _base.html
248- Paste Your Fonts directory in static directory
249- Restart Server
250- add these into _base.html before {% block content %}
251- content of product_list.html
252- content of _base.html for now
253- Copy/Paste js files in static directory
254- Change this line in product_list.html
255- Check your products. It must be implemented correctly.
256- Change this line in product_list.html
257- Change this in product_detail.html
258- Check this link -> http://127.0.0.1:8000/products/1/
259- import this into products/models.py
260- Create new model for comments this into products/models.py
261- make sure server is running + write in another Terminal
262- make sure server is running + write in another Terminal
263- import into products/admin.py
264- add this into products/admin.py
265- Restart Server
266- Check browser links
267- Create two comments for two different products
268- Create new class in products/admin.py
269- add this in 'class ProductAdmin' > products/admin.py 
270- Change product_detail.html on line number 113 : <ul class='review__list'>
271- add {% load static %} to product_detail.html
272- Go in product details in this link shuold be shows detail of comments
273- Create new file in products directory
274- import these in products/forms.py
275- Create new class in products/forms.py
276- add these bunch of codes into ProductDetailView class in products/views.py
277- import into first of products/views.py
278- change these bunch of code in product_detail.html
279- Check this link 
280- add these bunch of codes in product_detail.html
281- Check this link 
282- check in settings.py crispy_forms should be installed
283- write after {% load static %} in product_detail.html
284- change this in product_detail.html
285- Check this link 
286- import in products/views.py
287- Create new class in products/views.py
288- import in products/urls.py
289- Create new path in products/urls.py
290- add this into product_detail.html
291- create a comment + should get an error
292- add  this in class of Comment into products/models.py
293- add new comment and check it
294- change this line in product_detail.html
295- Create new Custom Manager in products/models.py with a new class
296- add this in class of Comment into products/models.py
297- Create new directory in products
298- Create new file in products/templatetags
299- Create new file in products/templatetags
300- add into in products/templatetags/comment_tags.py
301- create new decorator into products/templatetags/comment_tags.py
302- add this in first product_detail.html
303- this in first product_detail.html
304- check this link
305- Restart server , + (sure you have deactive bunch of comments and in this shouldn't be shows)
306- this in first product_detail.html
307- change this into products/admin.py -> about StackedInline
308- add this in products/models.py -> about Verbose Name
309- Change this into config/settings.py
310- Add this into config/settings.py -> USE_L10N = True # Localization
311- Change this line in product_detail.html -> <span class='reply-title pull-right'>{% translate 'Write your comment' %}</span>
312- add this in first of product_detail.html -> {% load i18n %}
313- Change this line in product_detail.html -> <input type='submit' value='{% translate 'Submit' }'>
314-  Change this line in product_detail.html -> <span>{% translate 'Product Description' %}</span>
315- Create new file in products directory -> locale
316- Write in Terminal -> cd products
317- Write in Terminal + venv have to activated -> django-admin makemessages -l fa
318- Write in Terminal (You need to install msguniq on your system. For a debian system, you can likely do this with sudo apt-get install gettext.)
319- Write in Terminal + venv have to activated (again) --->> django-admin makemessages -l fa
320- Go to this address -> products/locale/fa/LC_MESSAGES/django.po
321- change this line in products/locale/fa/LC_MESSAGES/django.po
322- Write in Terminal + venv have to activated -> django-admin compilemessages
323- Press Ctrl + P and write
324- go and sure created this file in this address -> products/locale/fa/LC_MESSAGES/django.mo
325- Restart Server and run again
326- go this link should be Traslated your selections
327- Now, You can change between two these in config/settings.py
328- Change this in product_detail.html -> <h1 class='page-title'>{% translate 'product detail of' %} «{{ product.title }}»</h1>
329- In Terminal -> django-admin makemessages -l fa
330- look at this fil is added translatation automaticaly in -> products/locale/fa/LC_MESSAGES/django.mo || Why added automated this fil ?
331- Write in Terminal + venv have to activated -> django-admin compilemessages
332- This is just for Test. Create a function in products/views.py
333- import into products/views.py -> from django.http import HttpResponse
334- add new path in products/urls.py -> path('hello/', test_translation),
335- import into products/urls.py -> from .views import test_translation
336- Check this link, should be shows 'HELLO' -->>  http://127.0.0.1:8000/products/hello
337-  import into products/urls.py  -->>  from django.utils.translation import gettext as _
338- Change this in function of test_translation
339- In Terminal -->> django-admin makemessages -l fa
340- Go inside this address products/locale/fa/LC_MESSAGES/django.mo , add a translate for 'HELLO'
341- In Terminal -->> django-admin compilemessages
342- Change Language inside config/settings.py to 'fa'
343- Check this link, this link should be shows -->> سلام  -->> http://127.0.0.1:8000/products/hello/
344- import this into models.py ->  from django.utils.translation import gettext_lazy as _
345- Change this in class of Comment in products/models.py
346- In Terminal (in products directory Terminal) -->  django-admin makemessages -l fa
347- Translate in file products/locale/fa/LC_MESSAGES/django.mo , add a translate for 'Test'
348- In Terminal (in products directory Terminal)
349- add <br> tag after this line in product_detail.html
350- Go this link and check comment table
351- add this in products/models.py
352- in Terminal
353- in products/locale/LC_MESSAGES/django.po Change theses 
354-in Terminal
rosetta  
355-in Terminal (docker in running by default AND )
356- in Terminal --> docker-compose exec web python -m pip freeze > requirements.txt
357- add Rosetta in INSTALLED_APPS in config/settings.py
358- Create new path in config/urls.py
359- go in this link everything is Right to Left for Farsi Persons -> http://127.0.0.1:8000/admin/
360- go to this link to see rosetta panel, should be reach that without any errors -> http://127.0.0.1:8000/rosetta/files/project/
361- Add this lines after 'LANGUAGE_CODE = 'fa'' > config/settings.py
362- Restart Server
363- go to this link, http://127.0.0.1:8000/rosetta/files/django/ have to three sections of LANGUAGES
364- Visit this link and brows in that -> http://127.0.0.1:8000/rosetta/files/third-party/
messages
365- Go to this link and learn with that -> https://docs.djangoproject.com/en/5.0/ref/contrib/messages/ OR https://docs.djangoproject.com/en/5.0/ref/contrib/messages/#displaying-messages
366- Copy/Paste this into _base.html after header tag
367- import this into products/views.py -> from django.contrib import messages
368- add this line into products/views.py >> test_translation(request) function
369- Create testHello.html in products/templates/products/ -> testHello.html
370- add this into it -> testHello.html
371- Change this in products/views.py  >> test_translation(request) function
372- visit and check this link, sould have a message in top -> http://127.0.0.1:8000/products/hello/
373- Change this in _base.html
374- visit and check this link, sould have a message in top -> http://127.0.0.1:8000/products/hello/
375- add this in the end of config/settings.py
Shopping cart
376- Delete this function in products/views.py
377- Delete this path in products/urls.py
378- Restart Server, Should be run without any errors
379- Create new app, write in another Terminal write(docker was running by default) --> docker-compose exec web python manage.py startapp cart
380- Add in INSTALLED_APPS in config/settings.py
381- Create cart.py in cart app --> cart.py
382- Create Cart class in cart.py
383- add this method into class Cart
384- add docstring to these methods and Cart class
385- add a method for remove a product in Cart class
386- Import this into cart/cart.py --> from products.models import Product
387- add a method for iteration a product in Cart class
388- Overwrite this method in class Cart
389- add a method for clear all products for after purchase
390- add a method To collect prices in class Cart
391- create forms.py in cart directory --> forms.py
392- add these content in cart/forms.py
393- create this cart/--> templates/cart/cart_detail.html
394- content of cart_detail.html
395- create this file in cart/urls.py
396- content of cart/templates/urls.py
397- add this path in config/urls.py
398- content of cart/views.py
399- link in browser, check, should be right 
400- import this in cart/views.py
401- add these line into cart_detail_view function in cart/views.py
402- delete this in cart_detail.html
403- import these into cart/views.py
404- create new variable in cart/urls.py --> app_name = 'cart'
405- Create new function in cart/views.py
406- go in cart_detail.html and create for loop like this in line 33
407- change this table row like this (in step 406)  -->>   <a href='product-details.html'>{{ item.product_obj.title }}</a>
408- check this link in broswer should be see empty cart -->> http://127.0.0.1:8000/cart/
409- import into products/views.py
410- add this after context['comment_form'] in ProductDetailView into products/views.py
411- Delete these lines from 49 to 56 in product_detail.html
412- Add these instead of past step(411) 
413- import into cart/urls.py  --> from .views import add_to_cart_view
414- Create new path in cart/urls.py  --> path('add/<int:product_id>', add_to_cart_view, name='cart_add'),
415- Change this in line 50 of product_detail.html  --> <form action='{% url 'cart:cart_add' product.id %}' method='POST'>
416- Check a product and add it to cart with this link: should redirect to cart page correctly  --> http://127.0.0.1:8000/products/2/
417- delete/Change price in line 50 of cart_detail.html  --> <span class='money'>{{ item.product_obj.price }}</span>
418- Check this link should be correct for each product price, true numbers  --> http://127.0.0.1:8000/cart/
419- Delete/Change value tag in line 60 of cart_detail.html  --> <span class='money'>{{ item.product_obj.price }}</span>
420- Change line 50 of cart_detail.html like this
421- Check this link should be correct for numbers of product price in purchase process  --> http://127.0.0.1:8000/cart/
422- Change line 52 number of product_detail.html  --> {{ add_to_cart_form|crispy }}
423- Delete line number 52 of product_detail.html this  --> {{ add_to_cart_form|crispy }}
424- add this in line number 53 of product_detail.html this
425- change this line in cart/forms.py  --> QUANTITY_CHOICES = [(i, str(i)) for i in range(1, 31)]
426- Check this link and write more than 30 number for buy a product, should don't let to pass --> http://127.0.0.1:8000/products/2/
427- Delete again these lines from cart/views.py
Delete Items in Cart
428- Create new function in cart/views.py
429- change this line in cart_detail.html (from line number 36) --> <a href='{% url 'cart:cart_remove' item.product_obj.id %}'>
430- import to urls.py --> from .views import remove_from_cart
431- create new path in cart/urls.py --> path('remove/<int:product_id>/', remove_from_cart, name='cart_remove'),
432- delete a product , shuold be delete it --> http://127.0.0.1:8000/products/2/
433- change this in cart_detail.html (from line number 45) --> <a href='{{ item.product_obj.get_absolute_url }}'>
434- add this line in AddToCartProductForm in cart/forms.py  -->     inplace = forms.BooleanField(required=False, widget=forms.HiddenInput)
435- change this method in cart/cart.py
436- add this condition in add method in cart/cart.py before else
437- change this in cart/views.py  -->  cart.add(product, quantity, replace_current_quantity=cleaned_data['inplace'])
438-  in cart/views.py
439- create new form in cart_detail.html in line number 56 
440- final changes of form cart_detail.html in line number 56
441- delete form of cart_detail.html in line number 17 and 89
442- change this in line number 61 of cart_detail.html
443- Restart Server
444- check this link and change number a product in purchase process, should be replace number
445- change line number 20 in cart.py with this
446- change linke number 40 in cart_detail.html
447- change linke number 25 in cart_detail.html
448- change linke number 42 in cart_detail.html
449- get out side this two lines from last div in line from 66/67 number line to 67/68 cart_detail.html
450- change  number 55 in cart_detail.html
451- change number 68 in cart_detail.html
452- add this line to cart.py in class Cart in def __iter__
453- change line number 73 in cart_detail.html
454- Check last changes in this link
455- Change all in the class Cart in get_total_price method cart.py
456- Delete this in cart_detail.html
457- change line number 100 in cart_detail.html
458- Check last changes in this link
459- add table in 'if' condition in cart_detail.html
460- import this to cart/views.py -> from django.views.decorators.http import require_POST
461- add this line before add_to_cart_view function in cart/views.py
462- import these to cart.py --> from django.contrib import messages   from django.utils.translation import gettext as _
463- add this in line number 28 before 'self.save()' in 'add' method > cart.py  --> messages.success(self.request, _('Product successfuly added to cart'))
464- add this in line before 'self.save()' > cart.py -->   messages.success(self.request, _('Product successfully deleted to cart'))
465- create locale directory in cart directory  --> locale
466- in Terminal go in cart directory  --> django-admin makemessages -l fa
467- go in this link than translate that messages you need to show  --> http://127.0.0.1:8000/rosetta/files/third-party/fa/1/
468- Logout from user
469- go to this link and write a comment  -->  http://127.0.0.1:8000/products/comment/2/
470- add in line number 163 in product_detail.html
471- in Terminal go in products directory  --> django-admin makemessages -l fa
472- restart server
473- login with an user (admin is best)
474- add this after <span> in line number 164 in product_detail.html
475- go in _base.html add this after <ul class='user-info-menu'> tag in line number 96
476- add this in first of _base.html
477- in Terminal go in products directory
478- go to this link and translate to what you want
Context Processors
479- Create context_processors.py in cart directory -->  context_processors.py
480- Create new function in context_processors.py
481- Import this in context_processors.py --> from .cart import Cart
482- add this in config/settings.py in TEMPLATES in context_processors end of that
483- add this in _base.html in line number 90
484- Restart Server Ctrl+C than 
485- Add a product for example check all pages most be shows number of products you want to buy for example
486- Change this line in cart.py   --->>      return sum(item['quantity'] for item in self.cart.values())
487- Restart Server Ctrl+C than --->>> docker-compose up
488- check again these links --->>> http://127.0.0.1:8000/   OR http://127.0.0.1:8000/products/
489- Cut than Change than Copy this code and Create file with name ... in ... directory 


"
git push -u origin main # with ScreenShot for showing demo png file