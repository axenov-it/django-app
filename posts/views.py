from .serializers import PostSerializer
from rest_framework import viewsets
from .models import Post


class PostsView(viewsets.ModelViewSet):
    serializer_class = PostSerializer
    queryset = Post.objects.all()
    lookup_field = 'slug'
