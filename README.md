# flutter_pract1

# Практическая работа №1
## Тема: Составление шаблонов Flutter

#### Цель работы: отработать верстку в Flutter
#### Ход работы:
Структура приложения
```
lib
├── main.dart
├── menu_view.dart
├── utilis
│   ├── reusable_card.dart
│   ├── rounded_button.dart
│   ├── screen3_card.dart
│   └── song_card.dart
└── views
    ├── screen1_view.dart
    ├── screen2_view.dart
    └── screen3_view.dart
    ```

Сначала было создано окно с выбором версток ```lib\menu_view.dart``` с помощью ```dart GridView.count() ``` и добавил кнопки с помощью, обернутой в ```MenuButton()```, ```ReusableCard()```
и с помощью этого окна можно переходить между всем версками

1.	Первая верстка ```lib\views\screen1_view.dart```

Использовал ```FloatingActionButton()``` чтобы у пользователя была кнопка перехода в меню. Создал пользовательский класс ```lib\utilis\rounded_button.dart```  ```RoundedButtonWPadding()``` который оборачивает ```OutlinedButton()``` в виджетах для удобства использования 

![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v1.png "Первая верстка")

1.1. Структура первого окна

![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v1_1.png "Структура первого окна")

2.	Вторая верстка ```lib\views\screen2_view.dart```

Использовал ```FloatingActionButton()``` чтобы у пользователя была кнопка перехода в меню. Для того, чтобы сделать изображение с закругленными краями применил виджет ```ClipRRect()```. Все изображения берутся из интернета c помощью ```Image.network('https://random.imagecdn.app/400/250'))```


![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v2.png "Вторая верстка")

2.1. Структура второго окна

![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v2_2.png "Структура второго окна")

3.	Третья верстка ```lib\views\screen3_view.dart```

Использовал ```FloatingActionButton()``` чтобы у пользователя была кнопка перехода в меню. Создал пользовательский класс ```lib\utilis\screen3_card.dart```

![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v3.png "Третья верстка")

3.1. Структура третьего окна

![](https://github.com/Chu-4hun/flutter_pract1/blob/e31d616884780988cebffb9f90e60337079fcee1/images/v3_3.png "Структура третьего окна")

#### Вывод: По мере прохождения данной практической работы были приобретены и закреплены навыки верстки во флаттере.
