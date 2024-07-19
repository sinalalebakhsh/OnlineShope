# If got this error:
# relation "django_session" does not exist
# LINE 1: ...ession_data", "django_session"."expire_date" FROM "django_se...
docker-compose exec web python manage.py migrate --fake sessions zero
# Output:
    # Operations to perform:
    #   Unapply all migrations: sessions
    # Running migrations:
    #   No migrations to apply.
    
docker-compose exec web python manage.py migrate --fake-initial
# Output
    # Operations to perform:
    #   Apply all migrations: account, accounts, admin, auth, contenttypes, sessions
    # Running migrations:
    #   Applying contenttypes.0001_initial... OK
    #   Applying contenttypes.0002_remove_content_type_name... OK
    #   Applying auth.0001_initial... OK
    #   Applying auth.0002_alter_permission_name_max_length... OK
    #   Applying auth.0003_alter_user_email_max_length... OK
    #   Applying auth.0004_alter_user_username_opts... OK
    #   Applying auth.0005_alter_user_last_login_null... OK
    #   Applying auth.0006_require_contenttypes_0002... OK
    #   Applying auth.0007_alter_validators_add_error_messages... OK
    #   Applying auth.0008_alter_user_username_max_length... OK
    #   Applying auth.0009_alter_user_last_name_max_length... OK
    #   Applying auth.0010_alter_group_name_max_length... OK
    #   Applying auth.0011_update_proxy_permissions... OK
    #   Applying auth.0012_alter_user_first_name_max_length... OK
    #   Applying accounts.0001_initial... OK
    #   Applying account.0001_initial... OK
    #   Applying account.0002_email_max_length... OK
    #   Applying account.0003_alter_emailaddress_create_unique_verified_email... OK
    #   Applying account.0004_alter_emailaddress_drop_unique_email... OK
    #   Applying account.0005_emailaddress_idx_upper_email... OK
    #   Applying account.0006_emailaddress_lower... OK
    #   Applying account.0007_emailaddress_idx_email... OK
    #   Applying account.0008_emailaddress_unique_primary_email_fixup... OK
    #   Applying account.0009_emailaddress_unique_primary_email... OK
    #   Applying admin.0001_initial... OK
    #   Applying admin.0002_logentry_remove_auto_add... OK
    #   Applying admin.0003_logentry_add_action_flag_choices... OK
    #   Applying sessions.0001_initial... OK
 