﻿#language: ru

@tree

Функционал: Проверка добавления картинок в элемент справочника Товары

Как Тестировщик я хочу
добавить картинку к товару
чтобы убедиться, что функционал работает

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _000101 Подготовительный

	Когда Загрузка констант
	Когда Загрузка справочников для Товара

Сценарий: _000102 Добавление картинки

* Я открываю товар Bosch1234
	И В командном интерфейсе я выбираю "Закупки" "Товары"
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование"  |
		| "Электротовары" |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Чайники"      |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Bosch1234"    |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Bosch1234 (Товар)"

* Я добавляю в товар картинку
	И я нажимаю кнопку выбора у поля с именем 'ФайлКартинки'
	Тогда открылось окно "Файлы"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "150.jpg"      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Bosch1234 (Товар) *"
	И у элемента формы с именем 'Картинка' текст редактирования стал равен "e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=8e38cd8bd552f72211f017c4342c09f9"
	
* я сохраняю и закрываю товар
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Bosch1234 (Товар)"
	И Я закрываю окно "Bosch1234 (Товар)"
	И Я закрываю окно "Товары"
