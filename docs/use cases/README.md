# Модель прецедентів

Цей документ містить в собі опис основних сценаріїв роботи системи.

Вбудовування зображень діаграм здійснюється з використанням сервісу [UML Editor](https://jace-dev.herokuapp.com/design/uml-editor#/).

В markdown-файлі використовується опис діаграми.

## Діаграми прецедентів


**Загальна схема використання**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  skinparam actorStyle awesome
  actor Користувач #f7f2f7
  usecase "Зареєструватися" as Reg #b5d1ff
  usecase "Авторизуватися" as Auth #b5d1ff
  
  Користувач -u-> Auth
  Користувач -u-> Reg

  
  actor Менеджер #ffebfd
  usecase "Редагувати проекти" as EditPrj #b5ffc0
  usecase "Редагувати плани проекту" as EditPlans #b5ffc0

  Менеджер --> EditPrj
  Менеджер --> EditPlans
  
  
  actor Тімлід #ffebfd
  usecase "Редагувати артефакти" as EditArt #b5ffc0
  usecase "Редагувати завдання" as EditTasks #b5ffc0

  Тімлід --> EditArt
  Тімлід --> EditTasks
  
  
  actor Розробник #ffebfd
  usecase "Переглядати завдання" as ViewTasks #b5ffc0

  Розробник --> ViewTasks
  
  
  Менеджер -u-|> Користувач
  Тімлід -u-|> Користувач
  Розробник -u-|> Користувач
  
@enduml

</center>


**Схема використання для менеджера проекту**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  skinparam actorStyle awesome
  actor Менеджер #ffebfd
  usecase "Редагувати проекти" as EditPrj #b5ffc0
  usecase "Редагувати плани проекту" as EditPlans #b5ffc0


  Менеджер -u-> EditPrj
  
  usecase "Створити проект" as CreatePrj #b5d1ff
  usecase "Змінити властивості проекту" as EditPrjProp #b5d1ff
  usecase "Видалити проект" as DeletePrj #b5d1ff
  
  CreatePrj .d.>"<<extends>>" EditPrj
  EditPrjProp "<<extends>>" .d.> EditPrj
  DeletePrj .d.>"<<extends>>" EditPrj


  Менеджер --> EditPlans
  
  usecase "Створити план" as CreatePlan #b5d1ff
  usecase "Змінити план" as EditPlan #b5d1ff
  usecase "Видалити план" as DeletePlan #b5d1ff
  usecase "Призначити план тімліду" as AssignPlan #b5d1ff
  
  CreatePlan .u.>"<<extends>>" EditPlans
  EditPlan "<<extends>>".u.> EditPlans
  DeletePlan "<<extends>>".u.> EditPlans
  AssignPlan .u.>"<<extends>>" EditPlans
  
  
@enduml

</center>


**Схема використання для тімліда**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  skinparam actorStyle awesome
  actor Тімлід #ffebfd
  usecase "Редагувати завдання" as EditTasks #b5ffc0
  usecase "Редагувати артефакти" as EditArt #b5ffc0


  Тімлід -u-> EditTasks
  
  usecase "Створити завдання" as CreateTask #b5d1ff
  usecase "Змінити завдання" as EditTask #b5d1ff
  usecase "Видалити завдання" as DeleteTask #b5d1ff
  usecase "Призначити завдання" as AssignTask #b5d1ff
  
  CreateTask "<<extends>>".d.> EditTasks
  EditTask "<<extends>>".d.> EditTasks
  DeleteTask "<<extends>>".d.> EditTasks
  AssignTask .d.>"<<extends>>" EditTasks


  Тімлід --> EditArt
  
  usecase "Створити артефакт" as CreatePlan #b5d1ff
  usecase "Змінити артефакт" as EditPlan #b5d1ff
  usecase "Видалити артефакт" as DeletePlan #b5d1ff
  usecase "Додати артефакт до завдання" as AssignPlan #b5d1ff
  
  CreatePlan .u.>"<<extends>>" EditArt
  EditPlan "<<extends>>".u.> EditArt
  DeletePlan "<<extends>>".u.> EditArt
  AssignPlan "<<extends>>".u.> EditArt

@enduml

</center>


**Схема використання для розробника**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  skinparam actorStyle awesome
  actor Розробник #ffebfd
  usecase "Переглядати завдання" as ViewTasks #b5ffc0

  Розробник -u-> ViewTasks
  
  usecase "Переглянути вміст завдання" as ViewDevTask #b5d1ff
  usecase "Надіслати завдання на перевірку" as SendReviewTask #b5d1ff
  
  ViewDevTask "<<extends>>"..> ViewTasks
  SendReviewTask "<<extends>>"..> ViewTasks
  
  
@enduml

</center>
