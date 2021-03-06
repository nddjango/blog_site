from django.contrib import admin
from django.urls import path
from blog_app import views


urlpatterns = [
    path('', views.index,name="index"),
    path('register/',views.register,name="register"),
    path('login/',views.login,name="login"),
    path('logout/',views.logout,name="logout"),
    path('about/',views.about,name="about"),
    path('contact/',views.contact,name="contact"),
    path("add_blog/",views.add_blog,name="add_blog"),
    path("ans_msg/",views.ans_msg,name="ans_msg"),
    path("view_blog/",views.view_blog,name="view_blog"),
    path("view_profile/",views.view_profile,name="view_profile"),
    path("update_profile/",views.update_profile,name="update_profile"),
    path("view_p_blog/<int:id>/",views.view_p_blog,name="view_p_blog"),
    path('elements/',views.elements,name="elements"),
    path("your_blog/",views.your_blog,name="your_blog"),
    path("b_del/<int:id>/",views.b_del,name="b_del"),
    path("b_edit/<int:id>/",views.b_edit,name="b_edit")


]
