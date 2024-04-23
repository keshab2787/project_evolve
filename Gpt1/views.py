from django.shortcuts import render
from django.http import HttpResponse
#from django.views.decorators.cache import cache_page

# Create your views here.
#@cache_page(60 * 15) # cache for 5 minutes
def index(request):
    return HttpResponse("Hello World. This is the response from the django with redis!")

