﻿#language: ru

@tree

Функционал: Создание документа Заказ

Как менеджер по продажам я хочу
создать документ Заказ
чтобы проверить расчет итоговой суммы документа при изменении в строке товаров количества и цены  
а так же проверить возможность заполнения поля Количество при добавлении Услуги
 
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание и проверка итоговой суммы документа Заказ
// создание документа
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"Товары\""
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Скороход АО"  |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Закупочная"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
* Заполнение товарной части
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Продукты"     |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Колбаса"      |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "250,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "10"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка итоговой суммы документа
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "2 500"
* Изменение цены и проверка итоговой суммы документа
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "300,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "3 000"
* Изменение количества и проверка итоговой суммы документа
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "15"
	И в таблице 'Товары' я завершаю редактирование строки
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "4 500"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение и зарытие документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от *" в течение 20 секунд
	Тогда открылось окно "Заказы товаров"
	И Я закрываю окно "Заказы товаров"

Сценарий: Проверка заполнения поля Количество при добавлении Услуги в документ Заказ
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"Товары\""
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Скороход АО"  |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Закупочная"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
* Заполнение товарной части
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Услуги"       |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Ремонт"       |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "250,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "1"
	И в таблице 'Товары' я завершаю редактирование строки
* Проведение и зарытие документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от * *" в течение 20 секунд
	Тогда открылось окно "Заказы товаров"
	И Я закрываю окно "Заказы товаров"
