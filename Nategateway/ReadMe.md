# How to create sample application
1. Run follwoing command
```
 django-admin startproject MyProject
```
2. go to MyProject folder and  Run following command to create project 
```
 python manage.py startapp ors
```
3.  MyProject-> setting.py INSTALLED_APPS add ors in last
```
	INSTALLED_APPS = [
	    -----
	    -----
	    'ors',
	]
```
4. ors-> models.py  add your model 

 example: 
```
   from django.db import models
      class Role(models.Model):
    	name = models.CharField(max_length=40)
    	description = models.CharField(max_length=40)
    	def __str__(self):
	    	return self.name
```


5. ors-> admin.py register your model 

 example:
```
	from django.contrib import admin

	from . import models 
	# Register your models here.
	admin.site.register(models.Role)
```

6. Create migration using following command 
```
  python manage.py makemigrations ors 
```

7. Run migration  
```
   python manage.py migrate
```


8. Create superadmin user run following command 
```
   python manage.py createsuperuser     
```

9. Start application using following command
```
   python manage.py runserver 8080    
```
10. Open a Web browser and go to “/admin/” on your local domain 

     http://127.0.0.1:8080/admin   
    
    now you are able to create role crud operation 