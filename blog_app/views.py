from django.shortcuts import render,HttpResponse,render,redirect
from .models import *
from .forms import *
from blog_for_thinker import settings 
from django.core.mail import send_mail 
from django.contrib.auth import authenticate, login, logout
from django.contrib.sessions.models import Session
# import required module 
import requests 
import json

# Create your views here.
def index(request):
    user=request.session.get('dp')
    usernm=request.session.get('unm')

    blog_data=blog.objects.all()

    if request.method == 'POST':
        c_frm=contactform(request.POST)
        if c_frm.is_valid():
            c_frm.save()
            print("record inserted.....")
            return redirect('/ans_msg')
        else:
            print("not inserted")
            print(c_frm.errors)
    else:
        print("method is not post")
        c_frm=contactform()
    return render(request,"index.html",{'user':user,'c_frm':c_frm,'blog_data':blog_data,'usernm':usernm})

def register(request):
    if request.method =='POST':
        s_frm=signupform(request.POST,request.FILES)
        if s_frm.is_valid():
            s_frm.save()



            #---------------send mail----------------------
            # subject = 'Blog For thinker'
            # message = f'Hi {s_frm.cleaned_data.get("unm")}, thank you for registering in our site "Blog for thinkers" Welcome to our site user! Enjoy our services.......'
            # email_from = settings.EMAIL_HOST_USER 
            # recipient_list = [s_frm.cleaned_data.get('email')] 
            # send_mail( subject, message, email_from, recipient_list ) 
            
            
            
           #----------------send message--------------------- 
            url = "https://www.fast2sms.com/dev/bulk"
            # create a dictionary 
            my_data = { 
                # Your default Sender ID 
                'sender_id': 'FSTSMS',  
                # Put your message here! 
                'message': 'This is a test message',  
                'language': 'english', 
                'route': 'p', 
                # You can send sms to multiple numbers 
                # separated by comma. 
                'numbers': ''    
            } 
            # create a dictionary 
            headers = { 
                'authorization': 'SJzFa2A0YtUNPxpCkrTXcsEI6hoLl18Kf5nbZRQg4yDOd7vVj9b9nZVWxtq4Xp6Y58kuyUEo1B3SwAFr', 
                'Content-Type': "application/x-www-form-urlencoded", 
                'Cache-Control': "no-cache"
            }
            response = requests.request("POST", 
                            url, 
                            data = my_data, 
                            headers = headers) 
            # load json data from source 
            returned_msg = json.loads(response.text) 
            # print the send message 
            print(returned_msg['message'])



            return redirect("/")
        else:
            print(s_frm.errors)
    else:
        s_frm=signupform()
    return render(request,"register.html",{'s_frm':s_frm})

def login(request):
    if request.method == 'POST':
        email = request.POST['email']   
        pas = request.POST['password']

        u_data=signup.objects.get(email=email)

        user=signup.objects.filter(email=email,password=pas)

        if user:
            request.session['email']=email
            request.session['u_id']=u_data.id
            request.session['unm']=u_data.unm
            request.session['dp']=u_data.dp.url

            return redirect('/')
        else:
            print("not matched Login credintials")
            return redirect('/login')

    else:
        print("Login failed................")        
    return render(request,"login.html")

def logout(request):
    try:
        del request.session['email']
        del request.session['unm']
        del request.session['dp']


    except:
        return redirect("/")
    else:
        return redirect('/login')

def add_blog(request):
    if request.session.has_key('dp'):
        user=request.session.get('unm')
        if request.method=='POST':
            b_frm=blogform(request.POST,request.FILES)

            if b_frm.is_valid:
                b_frm.save()
                print("blog inserted ")
                return redirect("/")
            else:
                print("blog not inserted ")
                print(b_frm.errors)
    
        else:
            b_frm=blogform()

        return render(request,"add_blog.html",{'user':user,'b_frm':b_frm})
    else:
        return redirect("/login")

def ans_msg(request):
    return render(request,"ans_msg.html")

def about(request):
    user=request.session.get('dp')
    if request.method == 'POST':
        c_frm=contactform(request.POST)
        if c_frm.is_valid():
            c_frm.save()
            print("record inserted.....")
            return redirect('/ans_msg')
        else:
            print("not inserted")
            print(c_frm.errors)
    else:
        print("method is not post")
        c_frm=contactform()
    return render(request,"about.html",{'user':user,'c_frm':c_frm})

def contact(request):
    user=request.session.get('dp')

    if request.method == 'POST':
        c_frm=contactform(request.POST)
        if c_frm.is_valid():
            c_frm.save()
            print("record inserted.....")
            return redirect('/ans_msg')
        else:
            print("not inserted")
            print(c_frm.errors)
    else:
        print("method is not post")
        c_frm=contactform()
    return render(request,"contact.html",{'user':user,'c_frm':c_frm})

def view_blog(request):
    user=request.session.get('dp')
    blog_data=blog.objects.all()
    if request.method == 'POST':
        c_frm=contactform(request.POST)
        if c_frm.is_valid():
            c_frm.save()
            print("record inserted.....")
            return redirect('/ans_msg')
        else:
            print("not inserted")
            print(c_frm.errors)
    else:
        print("method is not post")
        c_frm=contactform()

    return render(request,"view_blog.html",{'blog_data':blog_data,'user':user,'c_frm':c_frm})

def view_profile(request):
    u_id=request.session.get('u_id')
    return render(request, "view_profile.html",{'s_data':signup.objects.get(id=u_id)})

def update_profile(request):
    u_id=request.session.get('u_id')
    if request.method == 'POST':
        s_frm=signupform(request.POST,request.FILES)
        id=signup.objects.get(id=u_id)
        if s_frm.is_valid():
            s_frm=signupform(request.POST,request.FILES,instance=id)
            s_frm.save()
            subject = 'Blog For thinker'
            message = f'Hi {s_frm.cleaned_data.get("unm")}, Your profile is updated successfully! Enjoy our services.......'
            email_from = settings.EMAIL_HOST_USER 
            recipient_list = [s_frm.cleaned_data.get('email')] 
            send_mail( subject, message, email_from, recipient_list ) 
            print("updated")
            return redirect("/logout")
        else:
            print("not updated")
            print(s_frm.errors)
    else :
        s_frm=signupform()
    return render(request, "update_profile.html",{'s_data':signup.objects.get(id=u_id),'s_frm':s_frm})

def elements(request):
       return render(request,"elements.html")
    
def view_p_blog(request,id):
    return render(request,"view_p_blog.html",{'b_data':blog.objects.get(id=id)})

def your_blog(request):
    usernm=request.session.get('unm')
    user=request.session.get('dp')
    return render(request,"your_blog.html",{'blog_data':blog.objects.filter(unm=usernm),'user':user})

def b_del(request,id):
    bid=blog.objects.get(id=id)
    bid.delete()    
    return redirect('/your_blog')

def b_edit(request,id):
    user=request.session.get('unm')
    if request.method == 'POST':
        myfrm=blogform(request.POST)
        id=blog.objects.get(id=id)
        if myfrm.is_valid:
            myfrm=blogform(request.POST,instance=id)
            myfrm.save()
            return redirect('/your_blog')
            print("updated")
        else:
            print(myfrm.errors)
    else:
        myfrm=blogform()
    return render(request,"b_edit.html",{'user':user,'b_data':blog.objects.get(id=id),'myfrm':myfrm})

