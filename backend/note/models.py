from django.db import models

class Note(models.Model):
    title = models.CharField(verbose_name="Title", max_length=30, blank=True, null=True)
    body = models.TextField(verbose_name="Body")
    created = models.DateTimeField(verbose_name="Created at", auto_now_add=True)
    updated = models.DateTimeField(verbose_name="Updated at", auto_now=True)

    def save(self, *args, **kwargs):
        
        if not self.title and self.body:
            self.title = self.body[:17] + "..."
        super().save(*args, **kwargs)  

    def __str__(self):
        return self.title or "Untitled"