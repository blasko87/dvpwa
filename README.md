# DVPWA — Damn Vulnerable Python Web Application

DVPWA is an intentionally vulnerable web application built with Python (aiohttp) for educational purposes. It demonstrates common security flaws such as SQL Injection, Cross-Site Scripting (XSS), session fixation, insecure password storage, and more.

## Branches

### `master`
The **master** branch contains the original vulnerable application. It is meant to be studied and exploited in a controlled environment to learn about web security vulnerabilities.

### `secure-version`
The **secure-version** branch contains security corrections applied to the vulnerable code as a reference for how to properly fix each issue. The following fixes are included:

1. **SQL Injection Prevention** — Replaced string interpolation with parameterized queries in `sqli/dao/student.py` to prevent SQL injection attacks.
2. **Secure Password Hashing** — Replaced insecure MD5 hashing with `bcrypt` in `sqli/dao/user.py`. Passwords are now hashed with a salt, making them resistant to rainbow table attacks.
3. **XSS Prevention (Jinja2 Autoescape)** — Enabled `autoescape=True` in the Jinja2 template engine (`sqli/app.py`) to automatically escape HTML output and prevent stored/reflected XSS.
4. **CSRF Protection** — Enabled the `csrf_middleware` in `sqli/app.py` to validate CSRF tokens on POST requests.
5. **Secure Session Cookies** — Set `httponly=True` on session cookies (`sqli/middlewares.py`) to prevent client-side JavaScript from accessing session data.
6. **Debug Mode Disabled in Production** — Changed `debug=True` to read from the `DEBUG` environment variable (`sqli/app.py`), defaulting to `false` in production.
7. **Session Regeneration on Login** — Added `session.invalidate()` before assigning the user ID on login (`sqli/views.py`) to prevent session fixation attacks.
8. **Bcrypt Fixtures** — Updated database fixtures (`migrations/001-fixtures.sql`) to use bcrypt-hashed passwords instead of MD5.

## Quick Start

```bash
# Build and run with Docker Compose
docker-compose up --build

# The app will be available at http://localhost:8080
```

## Test Credentials (secure-version)

| Username     | Password     |
|-------------|-------------|
| superadmin  | superadmin  |
| j.doe       | password    |
| s.king      | password    |
| p.parker    | spidey      |

## License

This project is for educational purposes only. Do not deploy it in a production environment.
