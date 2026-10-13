---
name: "create-actions"
description: "Створити GitHub Actions CI для CMake і тестів на трьох ОС"
argument-hint: "Створи workflow ci.yml і CI-скрипти"
agent: "build-engineer"
---

## Передумови

- Команду запускають у корені проєкту після `create-build`.
- Налаштовані CMake і GoogleTest/CTest.
- У репозиторії доступні `src/`, `tests/` та робоча конфігурація CMake.
- Не додавай секрети, токени або приватні ключі до workflow чи скриптів.

## Дії

1. Перевір, що CMake-конфігурація існує та локально може бути запущена.
2. Створи `.github/workflows/ci.yml` і одну job з matrix для `ubuntu-latest`, `windows-latest` та `macos-latest`.
3. Налаштуй запуск workflow на `push` і `pull_request` для гілок `develop`, `master` та `main`.
4. Залиш у `ci.yml` лише виклики зовнішніх скриптів: `ci.sh` для Linux/macOS та `ci.bat` для Windows.
5. Створи або онови `ci.sh` і `ci.bat`, щоб вони виконували checkout, конфігурацію CMake, збірку та запуск CTest з ненульовим кодом завершення при помилці.
6. Перевір YAML і скрипти синтаксично. Не приховуй помилки та не перезаписуй конфліктні файли без дозволу.

## Очікувані файли

- `.github/workflows/ci.yml` з matrix для трьох ОС і потрібними подіями.
- `ci.sh` для Linux/macOS.
- `ci.bat` для Windows.

## Повідомлення про помилку

Якщо YAML або скрипт має синтаксичну помилку, workflow не відповідає вимогам, скрипт не запускає всі етапи або виявлено секрет, зупини роботу:

> Помилка create-actions: CI workflow або скрипти не пройшли перевірку. Повний текст помилки наведено вище; workflow не вважається готовим.

