﻿#language: ru

@tree

Функционал: Проверка документов Заказ и Продажа под профилем Продавец

Как Тестировщик я хочу
проверить документы Заказ и Продажа
чтобы убедиться, что под профилем Продавец все работает правильно

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _000401 Подготовительный

	Когда Загрузка констант
	Когда Загрузка справочников и документа Заказ

	И я закрываю сеанс текущего клиента тестирования
	И Я подключаю клиент тестирования "Продавец" из таблицы клиентов тестирования

Сценарий: _000402 Проверка невозможности создания документа Заказ

	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И Проверяю шаги на Исключение:
		|'И я нажимаю на кнопку с именем "ФормаСоздать"'|
	И Я закрываю окно "Заказы товаров"

Сценарий: _000403 Создание документа Продажа на основании Заказа

* Я открываю документ
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И в таблице 'Список' я перехожу к строке:
		| "Вид цен" | "Организация"          | "Покупатель"           | "Склад"               | "Состояние заказа" |
		| "Оптовая" | "ООО \"Все для дома\"" | "Магазин \"Продукты\"" | "Склад отдела продаж" | "Открыт"           |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ * от *"

* Я пытаюсь провести документ
	И Проверяю шаги на Исключение:
		|'И я нажимаю на кнопку с именем "ФормаПровести"'|

* Я создаю документ Продажа на остновании Заказа
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараСоздатьНаОсновании'
	Тогда открылось окно "Продажа товара (создание)"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно "Продажа * от *"

	И я удаляю переменную "$$Номер$$"
	И я запоминаю значение поля "Номер" как "$$Номер$$"
	И я закрываю все окна клиентского приложения

	И В командном интерфейсе я выбираю "Продажи" "Продажи"
	Тогда открылось окно "Продажи товара"
	И в таблице 'Список' я перехожу к строке:
		| "Валюта взаиморасчетов" | "Вид цен" | "Номер"     | "Организация"          | "Покупатель"           | "Склад"               |
		| "Рубли"                 | "Оптовая" | "$$Номер$$" | "ООО \"Все для дома\"" | "Магазин \"Продукты\"" | "Склад отдела продаж" |
	И Я закрываю окно "Продажи товара"
	
