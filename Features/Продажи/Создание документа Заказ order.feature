#language: ru



Функционал: Создание документа заказ

Как менеджер по продажам я хочу
Создание документа Заказ  
чтобы поставить товар на учет

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание документа Заказ
// создание документа
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В панели разделов я выбираю 'Закупки'
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Заполнение шапки документа
	Тогда открылось окно 'Заказ * от *'
	И я нажимаю на кнопку открытия поля с именем "Организация"
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю на кнопку открытия поля с именем "Покупатель"
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Пантера АО'   |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ * от * *'
	И я нажимаю на кнопку открытия поля с именем "Склад"
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И я нажимаю на кнопку открытия поля с именем "Валюта"
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Заполнение товарной части
	Тогда открылось окно 'Заказ * от *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000012' | 'Электротовары' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000013' | 'Чайники'      |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000018' | 'Bosch15'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар'   | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Bosch15' | '2 700,00' | '2'          | '5 400,00' |
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	

* Проведение документа
	Тогда открылось окно 'Заказ * от *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ * от *' в течение 20 секунд


	