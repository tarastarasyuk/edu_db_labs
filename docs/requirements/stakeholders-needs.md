# Запити зацікавлених осіб

## Вступ

Цей лист дає можливість зацікавленим особам дізнатися більше про проєкт "Isn't ready" з теми
"Системи управління проектами", в процесі розробки.

### Мета

- Провести аналіз потрібних матеріалів для створення проекту
- Описати детальну документацію проєкту "Isn't ready"
- Зробити аналіз для розрахунку цільової аудиторії продукту, передбачити продуктивність враховуючи
  технічний функціонал майбутньої платформи для менеджменту проєктами
- Завершити розробку системи управління проектами.

### Контекст

Цей документ описує функціональність, продуктивність, надійність та інші особливості проекту, що дозволяє зацікавленим особам більш детально ознайомитись з можливостями проекту, дослідити переваги та недоліки, зрозуміти його конкурентоспроможність серед інших подібних проектів, представлених на ринку.

### Основні визначення та скорочення

- Система управління проектами – це набір інструментів, методів, процедур і зв'язаних з ними функціями контролю, об'єднаних в цілісну структуру, що використовується для ефективного управління проектами.
- Канбан, як і Scrum, – це методологія управління розробкою з філософії Agile. Основний її сенс зосереджено навколо канбан-дошки, яка візуалізує усі процеси.

Дивіться більше в розділі [Аналіз предметної області](https://tarastarasyuk.github.io/pm-system/requirements/state-of-the-art.html#%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%96-%D0%B2%D0%B8%D0%B7%D0%BD%D0%B0%D1%87%D0%B5%D0%BD%D0%BD%D1%8F).

### Посилання

- [Лекційни йматеріал з курсу "Організація баз даних" – Болдак А. О., 2022](https://github.com/edu-db/p1)
- [The Complete Glossary of Project Management Terminology - Kate Eby, 2017](https://www.smartsheet.com/complete-glossary-project-management-terminology)
- [Project Management - Wikipedia](https://en.wikipedia.org/wiki/Project_management)

## Короткий зміст

*[Розділ містить опис того, про що йдеться в цій частині цього документу, що залишилася. 
Також тут описана структура документу.]*

## Характеристика ділових процесів
 
***ID:*** AUTH_0x
    
***НАЗВА:*** Зареєструватись у системі
    
***УЧАСНИКИ:*** Користувач, Система

<!--***ПЕРЕДУМОВИ:*** Користувач не зареєстрований у системі

**_НАЗВА:_** Зареєструватись у системі

**_УЧАСНИКИ:_** Користувач, Система

**_ПЕРЕДУМОВИ:_** Користувач не зареєстрований у системі

***ОСНОВНИЙ СЦЕНАРІЙ:*** -->

**_ВИКЛЮЧНІ СИТУАЦІЇ:_**

- AUTH_EX_01.01 Знайдено обліковий запис користувача у системі

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач вводить дані для реєстрації
2. Система перевіряє наявність облікового запису користувача 
3. Система створює новий обліковий запис
4. Система надає дані облікового запису користувачеві


---

***ID:*** AUTH_0x
    
***НАЗВА:*** Авторизуватись у системі
    
***УЧАСНИКИ:*** Користувач, Система

<!--***ПЕРЕДУМОВИ:*** 

**_УЧАСНИКИ:_** Користувач, Система

**_ПЕРЕДУМОВИ:_**

- Користувач не авторизувався у системі
- Користувач є зареєстрованим у системі

+ AUTH_EX_02.01 Не знайдено обліковий запис користувача у системі
+ AUTH_EX_02.02 Користувач не пройшов авторизацію -->

**_ВИКЛЮЧНІ СИТУАЦІЇ:_**

- AUTH_EX_02.01 Не знайдено обліковий запис користувача у системі
- AUTH_EX_02.02 Користувач не пройшов авторизацію

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач вводить дані для авторизації
2. Система перевіряє наявність облікового запису користувача 
3. Система перевіряє отримані дані для авторизації 
4. Система надає доступ користувачеві до облікового запису


---

***ID:*** PM_0x

**_НАЗВА:_** Створити проект

**_УЧАСНИКИ:_** Менеджер проектів, Система

<!--***ПЕРЕДУМОВИ:*** Відсутні

**_РЕЗУЛЬТАТ:_** Створення проекту

**_ВИКЛЮЧНІ СИТУАЦІЇ:_**

PM_EX_01.01 Некоректно задана інформація проекту -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач обирає створення проекту
2. Користувач заповнює інформацію проекту
3. Користувач зберігає введену інформацію 
4. Система реєструє новий проект


---

***ID:*** PM_0x

**_НАЗВА:_** Додати завдання проекту

**_УЧАСНИКИ:_** Менеджер проектів, Система

<!--***ПЕРЕДУМОВИ:*** Наявність проекту

**_РЕЗУЛЬТАТ:_** Додавання завдань до проекту

**_ВИКЛЮЧНІ СИТУАЦІЇ:_**

PM_EX_02.01 Некоректно задана інформація про завдання-->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач обирає додавання завдань
2. Користувач заповнює інформацію про завдання
3. Користувач зберігає введену інформацію (можлива PM_EX_02.01)
4. Система додає нові завдання


---

***ID:*** PM_0x

**_НАЗВА:_** Призначити завдання

**_УЧАСНИКИ:_** Менеджер проектів, Система

<!--***ПЕРЕДУМОВИ:*** Наявність створених завдань

**_РЕЗУЛЬТАТ:_** Призначення існуючих завдань обраному тімліду

**_ВИКЛЮЧНІ СИТУАЦІЇ:_**

PM_EX_03.01 Не задано інформацію (завдання або тімлід)-->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач обирає призначити тімліда
2. Користувач співвідносить завдання до тімліда
3. Користувач зберігає введену інформацію 
4. Система записує зміни


---

***ID:*** PM_0x

**_НАЗВА:_** Переглянути прогрес проекту

**_УЧАСНИКИ:_** Менеджер проектів, Система

<!--***ПЕРЕДУМОВИ:*** Наявність проекту

**_РЕЗУЛЬТАТ:_** Відображення прогресу виконання проекту у відсотках

***ВИКЛЮЧНІ СИТУАЦІЇ:*** Відсутні -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач вибирає проект
2. Система показує прогрес виконання проекту


---

**_ID:_** LEAD_0X

**_НАЗВА:_** Додання артефактів до завдання

**_УЧАСНИКИ:_** Тімлід, Система

<!-- ***ПЕРЕДУМОВИ:*** Наявність завдання

***РЕЗУЛЬТАТ:*** Додання артефактів до завдання

***ВИКЛЮЧНІ СИТУАЦІЇ:***

LEAD_EX_01.01 Відсутні дані (артефакт і/або завдання) -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Тімлід обирає опцію "Додати артефакти до завдання"
2. Тімлід додає артефакти до завдання та зберігає зміни
3. Система записує зміни

---

**_ID:_** LEAD_0X

**_НАЗВА:_** Призначення дедлайну до завдання

**_УЧАСНИКИ:_** Тімлід, Система

<!-- ***ПЕРЕДУМОВИ:*** Наявність завдання

***РЕЗУЛЬТАТ:*** Призначення дедлайну до завдання

***ВИКЛЮЧНІ СИТУАЦІЇ:***

LEAD_EX_02.01 Заданий некоректний дедлайн -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Тімлід обирає завдання та призначає або змінює дедлайн
2. Система записує зміни

---

**_ID:_** LEAD_0X

**_НАЗВА:_** Призначення завдання розробникам

**_УЧАСНИКИ:_** Тімлід, Система

<!-- ***ПЕРЕДУМОВИ:*** Наявність завдання

***РЕЗУЛЬТАТ:*** Призначення завдання розробникам

***ВИКЛЮЧНІ СИТУАЦІЇ:*** Відсутні -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Тімлід обирає завдання
2. Тімлід призначає його розробникам та зберігає зміни
3. Система записує зміни

---

**_ID:_** DEV_0X

**_НАЗВА:_** Отримання завдання

**_УЧАСНИКИ:_** Розробник, Система

<!-- ***ПЕРЕДУМОВИ:*** Наявність завдання

***РЕЗУЛЬТАТ:*** Статус завдання: у виконанні розробником

***ВИКЛЮЧНІ СИТУАЦІЇ:*** Відсутні -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Розробник обирає завдання
2. Система позначає завдання як прийняте розробником

---

**_ID:_** DEV_0X

**_НАЗВА:_** Перегляд вмісту задачі

**_УЧАСНИКИ:_** Розробник, Система

<!-- ***ПЕРЕДУМОВИ:***

+ Наявність завдання
+ Наявність змісту завдання

***РЕЗУЛЬТАТ:*** Відображення змісту задачі розробнику

***ВИКЛЮЧНІ СИТУАЦІЇ:*** Відсутні -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Розробник обирає завдання
2. Система відображає інформацію про завдання

---

**_ID:_** DEV_0X

**_НАЗВА:_** Відправлення завдання на перевірку

**_УЧАСНИКИ:_** Розробник, Система

<!-- ***ПЕРЕДУМОВИ:*** Розробником додано рішення до завдання

***РЕЗУЛЬТАТ:*** Статус завдання: перевіряється

***ВИКЛЮЧНІ СИТУАЦІЇ:***

DEV_EX_03.01 Розробник не вніс зміни у артефакти завдання -->

**_ОСНОВНИЙ СЦЕНАРІЙ:_**

1. Користувач обирає завдання та відправляє його на перевірку
2. Система змінює статус завдання на "перевіряється"

---

## Короткий огляд продукту

"Ще не придумали" - це веб-додаток для ефективної організації спільної роботи та управління проектами. Наш продукт полегшує взаємодію між розробниками, менеджерами та замовниками. У кожної категорії користувачів буде свій функціонал за допомогою якого відбуватиметься взаємодія.

## Функціональність

Інтерфейс менеджера проекту (Project Manager):

У функції менеджера проекту входить створення проекту та його завдань,
безпосередня взаємодія із тімлідами та відслідковування результатів роботи.

Можливості:

1. Створення проекту
2. Редагування вже існуючих проектів
3. Видалення проект
4. Додавання завдання проекту
5. Призначення тімліду декілька завдань
6. Котролювання прогресу роботи розробників
7. Переглядання прогресу роботи кожного з тімлідів
8. Переглядання загального прогрес проекту

---

Інтерфейс тімліда (Teamlead):

Функціональність тімліда передбачає привʼязування артефактів проекту до задач,
визначення дедлайнів, відправлення та перевірку завдань конкретних розробників.

Можливості:

1. Визначення кола розробників
2. Привʼязування артефактів проекту до існуючих завдань
3. Додавання термінів виконання задач (deadlines)
4. Відправляння на виконання кожному з розробників певну кількість задач (TODO)
5. Перевірка виконання задач (DONE, IN PROGRESS)
6. Надавання доступу до проекту розробникам
7. Змінювання статусу задач (TODO, IN PROGRESS, REVIEW, DONE)

---

Інтерфейс розробника (Developer):

У функції розробника входить перегляд вмісту призначених йому задач
та артефактів, відправка виконаних задач на перевірку тімліду.

Можливості:

1. Приймання задач від тімліда (IN PROGRESS)
2. Отримання доступу до вмісту задачі
3. Переглядання артефактів, привʼязаних до задачі
4. Відправлення задачі на перевірку тімліду (REVIEW)
5. Відправлення запиту на зміну статусу проекту

## Практичність

Основним завданням нашої, як і будь-якої іншої системи управління проектами є досягнення поставлених цілей та завдань найбільш ефективним, з погляду витрат ресурсів, шляхом. Для цього система має бути спроможна легко та гнучко виконувати такі фундаментальні функції як розподіл, декомпозиція та оптимізація завдань.

Для забезпечення цих вимог наша система пропонує наступні інструмнти:

- Гнучке масштабування розмірів команди
- Призначення ресурів для окремо взятого завдання
- Розподілення робітників по ролям, що визначають їх права доступу та обов'язки
- Об'єднання декількох завдань в спільну тематичну категорію
- Гнучкий пошук та фільтрація завдань по змісту та ресурсам

## Надійність

Система повинна:

- володіти засобами захисту даних користувачів та проєктів

- виконувати резервну копію даних

- обслуговувати велику кількість користувачів і витримувати велике навантаження

- мати чітку систему надання доступу користувачам згідно посади в організації та вибору менеджера

- підтримувати зворотній зв'язок з користувачем

## Продуктивність

Вимоги до продуктивності:

- обмежена кількість створюваних проектів певної особи

- обмежена кількість задач у створеному проекті

- обмежена кількість користувачів створеного проекту

- обмежена кількість запитів в секунду

## Експлуатаційна придатність

Вимоги до підтримки:

- усунення помилок у роботі ПЗ протягом 2-х днів після збою продукту

- випуск нових версій ПЗ та оновлення продукту одразу після додавання нової функціональності

- регулярна оптимізація та рефакторинг програмного коду

- опрацювання та аналіз збоїв з їх подальшою ліквідацією
