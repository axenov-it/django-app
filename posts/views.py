from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse


def post(request, slug):
    return JsonResponse({'slug': slug})
