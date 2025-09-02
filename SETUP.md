- After setting up, delete this file.

## Project setup

- [dart_web_dev](https://github.com/sl8s/dev/blob/main/SETUP.md#dart_web_dev)
- [typescript_api_dev](https://github.com/sl8s/dev/blob/main/SETUP.md#typescript_api_dev)

### dart_web_dev

- If you need to change the application name from "dart_web_dev" to "dart_web_{your_name}":
- - dart_web_{your_name}/app/pubspec.yaml:
- - - "name: dart_web_dev" to "name: dart_web_{your_name}"

- Delete directories:
- - web

- Commands:
- - cd dart_web_{your_name}/app
- - flutter create --org com --template=app --platforms=web .

### typescript_api_dev

- If you need to change the application name from "typescript_api_dev" to "typescript_api_{your_name}":
- - typescript_api_{your_name}/app/package.json:
- - - " "name": "typescript_api_dev" " to " "name": "typescript_api_{your_name}" "