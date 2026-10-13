User: Опираючись на мій маніфест `agents/build-engineer.agent.md` та навички у папці `.github/skills/`, згенеруй вміст для 6 файлів команд у папку `prompts/`: `git-init.prompt.md`, `create-project.prompt.md`, `create-build.prompt.md`, `create-actions.prompt.md`, `check.prompt.md` та `init.prompt.md`. Кожна команда повинна мати передумови, дії, очікувані файли та повідомлення про помилку.

Copilot: Read skill `agent-customization`

Перевіряю формат prompt-файлів і правила з маніфесту та навичок, щоб згенерувати узгоджені команди без зміни інших файлів.

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\agents\\build-engineer.agent.md"
}

Find files matching `.github/skills/**`

Find files matching `prompts/**`

Read 
Completed with input: {
  "path": "C:\\Users\\merza\\AppData\\Roaming\\Code\\agentPlugins\\vscode-synced-customization-agent-host-copilotcli-1560216885\\1893661941\\skills\\agent-customization\\references\\prompts.md"
}

Read `SKILL.md`
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\.github\\skills\\project-scaffold\\SKILL.md"
}

Read `SKILL.md`
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\.github\\skills\\build-and-test\\SKILL.md"
}

Read `SKILL.md`
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\.github\\skills\\github-actions\\SKILL.md"
}

Find files matching `**/*`

Правила узгоджені: команди мають бути повторно безпечними, зупинятися на конфліктах і не приховувати помилки. Далі перевіряю наявний стан репозиторію та створюю шість prompt-файлів у запитаній папці `prompts/`.

Find files matching `*`

Find files matching `**/*.prompt.md`

Search for `git-init|create-project|create-build|create-actions|init`

Ran terminal command: git status --short

Edit , , , , , 

Шість файлів створено. Перевіряю YAML frontmatter, наявність усіх обов’язкових секцій і відсутність помилок пробілів/форматування.

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\git-init.prompt.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\create-project.prompt.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\create-build.prompt.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\create-actions.prompt.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\check.prompt.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\prompts\\init.prompt.md"
}

Ran terminal command: git diff --check; git status --short

Створено 6 prompt-файлів у папці `prompts/`:

- `git-init.prompt.md`
- `create-project.prompt.md`
- `create-build.prompt.md`
- `create-actions.prompt.md`
- `check.prompt.md`
- `init.prompt.md`

Кожен файл містить:

- YAML frontmatter із назвою, описом, підказкою аргументів і агентом `build-engineer`;
- розділ **«Передумови»**;
- послідовність **«Дій»**;
- перелік **«Очікуваних файлів»**;
- окреме **«Повідомлення про помилку»**.

`init.prompt.md` запускає команди послідовно: `git-init` → `create-project` → `create-build` → `create-actions` → `check`, із зупинкою після першої помилки.

Перевірку форматування через `git diff --check` виконано успішно.

User: Згенеруй вміст для файлу `docs/usage.md`. Це має бути інструкція для розробника. Опиши в ній: 1) Як запустити AI-агента через Copilot Chat у VS Code (яку команду вводити для виклику `init`). 2) Точні консольні команди для ручної локальної конфігурації та складання C++ проєкту за допомогою CMake (створення папки build, cmake .., cmake --build .). 3) Команду для локального запуску юніт-тестів через CTest. Форматування має бути у вигляді Markdown з блоками коду.

Copilot: Перевіряю наявний файл інструкції та документацію про агента, щоб додати узгоджені команди без зміни інших матеріалів.

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\docs\\usage.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\README.md"
}

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\agents\\build-engineer.agent.md"
}

Edit 

Інструкцію додано з командами запуску агента, конфігурації, складання та тестування. Перевіряю форматування Markdown і відсутність зайвих змін.

Read 
Completed with input: {
  "path": "D:\\Desktop\\АПКС\\409CSAD13\\docs\\usage.md"
}

Ran terminal command: git diff --check -- docs/usage.md; git status --short -- docs/usage.md

Файл `docs/usage.md` заповнено інструкцією для розробника.

Додано:

1. Інструкцію запуску AI-агента через Copilot Chat у VS Code з командою:
   ```text
   Виконай команду init згідно з інструкціями агента build-engineer.agent.md
   ```
2. Точні команди локальної конфігурації та складання через CMake:
   ```console
   mkdir build
   cd build
   cmake ..
   cmake --build .
   ```
3. Команду запуску юніт-тестів через CTest:
   ```console
   ctest --output-on-failure
   ```

Перевірку Markdown форматування виконано успішно.