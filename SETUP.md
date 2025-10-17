- After setting up, delete this file.

## Project setup

- [dart_web_boilerplate](https://github.com/sl8s/boilerplate/blob/main/SETUP.md#dart_web_boilerplate)
- [typescript_api_boilerplate](https://github.com/sl8s/boilerplate/blob/main/SETUP.md#typescript_api_boilerplate)

### dart_web_boilerplate

- If you need to change the application name from "dart_web_boilerplate" to "dart_web_{your_name}":
- - dart_web_{your_name}/app/pubspec.yaml:
- - - "name: dart_web_boilerplate" to "name: dart_web_{your_name}"

- Delete directories:
- - web

- Commands:
- - cd dart_web_{your_name}/app
- - flutter create --org com --template=app --platforms=web .

### typescript_api_boilerplate

- If you need to change the application name from "typescript_api_boilerplate" to "typescript_api_{your_name}":
- - typescript_api_{your_name}/app/package.json:
- - - " "name": "typescript_api_boilerplate" " to " "name": "typescript_api_{your_name}" "