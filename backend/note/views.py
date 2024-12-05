from rest_framework import status
from rest_framework.viewsets import ModelViewSet
from rest_framework.response import Response
from .models import Note
from .serializers import NoteSerializer
from rest_framework.renderers import JSONRenderer

class NoteViewSet(ModelViewSet):
    queryset = Note.objects.all().order_by('-created')  # Oluşturma zamanına göre tersten sıralama
    serializer_class = NoteSerializer

    def list(self, request, *args, **kwargs):
        response = super().list(request, *args, **kwargs)
        response.renderer = JSONRenderer()
        print(response)
        return response

    def create(self, request, *args, **kwargs):
        """Not oluşturma metodu"""
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)  # Doğrulama
        self.perform_create(serializer)  # Kayıt işlemi
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    def update(self, request, *args, **kwargs):
        """Not güncelleme metodu"""
        partial = kwargs.pop('partial', False)  # PATCH veya PUT ayrımı
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data, partial=partial)
        serializer.is_valid(raise_exception=True)  # Doğrulama
        self.perform_update(serializer)  # Güncelleme işlemi
        return Response(serializer.data)

    def destroy(self, request, *args, **kwargs):
        """Not silme metodu"""
        instance = self.get_object()
        self.perform_destroy(instance)  # Silme işlemi
        return Response({"detail": "Not başarıyla silindi."}, status=status.HTTP_204_NO_CONTENT)
