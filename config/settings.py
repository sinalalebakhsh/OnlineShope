from pathlib import Path
from environs import Env
import os
import dj_database_url

from dotenv import load_dotenv

load_dotenv()

# get .env if exists (for environments variables)
env = Env()
env.read_env()

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = "SAMPLE"

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = SAMPLE

# Allowed hosts
ALLOWED_HOSTS = ["SAMPLE"]

# Application definition
INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "crispy_forms",
    "crispy_bootstrap4",
    "allauth",
    "allauth.account",
    "rosetta",
    "accounts.apps.AccountsConfig",
    "pages.apps.PagesConfig",
    "products.apps.ProductsConfig",
    "cart.apps.CartConfig",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    "allauth.account.middleware.AccountMiddleware",
]

ROOT_URLCONF = "config.urls"


BASE_DIR_2 = Path(__file__).resolve().parent.parent
TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [str(BASE_DIR_2.joinpath("templates"))],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "config.wsgi.application"

# Database
DATABASES = {"default": dj_database_url.config(default=os.environ.get("DATABASE_URL"))}

# Password validation
AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]

# Internationalization
LANGUAGE_CODE = "fa-ir"
LANGUAGES = (
    ("en", "English"),
    ("de", "German"),
    ("fa", "Persian"),
)

TIME_ZONE = "Asia/Tehran"
USE_I18N = True
USE_L10N = True
USE_TZ = True

# Static files (CSS, JavaScript, Images)
STATIC_URL = "/static/"
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]
STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles")

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# accounts config
AUTH_USER_MODEL = "accounts.CustomUser"
LOGIN_REDIRECT_URL = "home"
LOGOUT_REDIRECT_URL = "home"

# CRISPY_TEMPLATE_PACK
CRISPY_TEMPLATE_PACK = "bootstrap4"

# For allauth Package
AUTHENTICATION_BACKENDS = [
    "django.contrib.auth.backends.ModelBackend",
    "allauth.account.auth_backends.AuthenticationBackend",
]

SITE_ID = 1

EMAIL_BACKEND="django.core.mail.backends.smtp.EmailBackend"
EMAIL_HOST="SAMPLE"
DEFAULT_FROM_EMAIL="SAMPLE"
EMAIL_PORT=SAMPLE
EMAIL_HOST_USER="SAMPLE"
EMAIL_HOST_PASSWORD="SAMPLE"
EMAIL_USE_TLS=SAMPLE

ACCOUNT_SESSION_REMEMBER = SAMPLE
ACCOUNT_SIGNUP_PASSWORD_ENTER_TWICE = SAMPLE
ACCOUNT_USERNAME_REQUIRED = SAMPLE
ACCOUNT_AUTHENTICATION_METHOD = "SAMPLE"
ACCOUNT_EMAIL_REQUIRED = SAMPLE
ACCOUNT_UNIQUE_EMAIL = SAMPLE
SAMPLE

CSRF_TRUSTED_ORIGINS = [
    "http://www.acronproject.com",
    "https://www.acronproject.com",
]


from django.contrib.messages import constants as messages_constants

# For messages framework
MESSAGE_TAGS = {
    messages_constants.ERROR: "danger",
}
