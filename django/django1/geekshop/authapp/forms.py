from django.contrib.auth import forms
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm, UserChangeForm
from .models import ShopUser


class ShopUserLoginForm(AuthenticationForm):
    class Meta:
        model = ShopUser
        fields = ('username', 'password')
        
        def __init__(self, *args, **kwargs):
            super(ShopUserLoginForm, self).__init__(*args, **kwargs)
            for field_name, field in self.fields.items():
                field.widget.attrs['class'] = 'form_control'


class ShopUserRegisterForm(UserCreationForm):
    class Meta:
        model = ShopUser
        fields = ("username", "first_name", "password1", "password2", "email", "age", "avatar")

        def __init__(self, *args, **kwargs):
            super.__init__(*args, **kwargs)
            for field_name, field in self.fields.items():
                field.widget.attrs['class'] = "form_control"
                field.help_text = ''

        def clean_age(self):
            data = self.cleaned_data['age']
            if data < 18:
                raise forms.ValidationError('Your a very yang')
            return data


class ShopUserEditForm(UserChangeForm):
    class Meta:
        model = ShopUser
        fields = ('username', "first_name", "avatar", "password", "email", "age")

        def __init__(self, *arg, **kwards):
            super.__init__(*arg, **kwards)
            for field_name, field in self.fields.items():
                field.widget.attrs["class"] = "form-control"
                field.help_text = ''
                if field_name == "password":
                    field.widget = forms.HiddenInput()

        def clean_age(self):
            data = self.cleaned_data['age']
            if data < 18:
                raise forms.ValidationError("you are very young")
            return data