import re
import threading
from django.conf import settings
from django.utils.deprecation import MiddlewareMixin

class ServerSelectMiddleware(MiddlewareMixin):
    def process_request(self, request):
        print(request.headers['server'])
        return None
