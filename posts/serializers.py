from rest_framework import serializers
from .models import Post
import logging


class PostSerializer(serializers.ModelSerializer):

    class Meta:
        model = Post
        fields = ('id', 'pub_date', 'headline', 'content',
                  'slug', 'image')
        lookup_field = 'slug'
        extra_kwargs = {
            'url': {'lookup_field': 'slug'}
        }

    image = serializers.SerializerMethodField()

    def get_image(self, obj):
        return obj.image.name
