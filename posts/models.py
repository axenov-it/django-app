from django.db import models


class Author(models.Model):
    full_name = models.CharField(max_length=70)

    def __str__(self):
        return self.full_name


class Post(models.Model):
    slug = models.CharField(unique=True, default="", max_length=250)
    image = models.ImageField(default="")
    pub_date = models.DateField()
    headline = models.CharField(max_length=200)
    content = models.TextField()
    author = models.ForeignKey(Author, on_delete=models.CASCADE)

    def __str__(self):
        return self.headline
