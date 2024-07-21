from django.shortcuts import render
from django.views.generic import TemplateView
from django.contrib.auth.mixins import LoginRequiredMixin


class HomePageView(LoginRequiredMixin, TemplateView):
    template_name = "home.html"


class AboutPageView(LoginRequiredMixin, TemplateView):
    template_name = "pages/about.html"
