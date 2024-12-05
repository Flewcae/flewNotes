from django.urls import include, path
from rest_framework.routers import DefaultRouter
from .views import NoteViewSet

router = DefaultRouter()
router.register(r'', NoteViewSet)  # Burada 'notes' endpoint olarak belirleniyor

urlpatterns = [
    path('', include(router.urls)),  # Router'ı projeye dahil edin
]
