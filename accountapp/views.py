from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def hello_world(request):
    return render(request, 'projects/hello_world.html')

