﻿#language: ru

@tree

Функционал: Проверка добавления картинки элемента в Справочник "Номенклатура"

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка добавления картинки элемента в Справочник "Номенклатура"
// Поиск необходимого элемента 
И В командном интерфейсе я выбираю 'Главное' 'Товары'
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000011' | 'Продукты'     |
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я перехожу к строке:
	| 'Артикул' | 'Вид'   | 'Код'       | 'Наименование' | 'Поставщик'   |
	| 'Т78'     | 'Товар' | '000000032' | 'Торт '        | 'Мосхлеб ОАО' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Торт (Товар)'
// Прикрепление файла картинки
И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
Тогда открылось окно 'Файлы'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000012' | 'Торт '        |
И в таблице "Список" я выбираю текущую строку

// Проверка прикрепления картинки к элементу справочника

Тогда элемент формы с именем "ФайлКартинки" стал равен 'Торт '

И у элемента формы с именем "Картинка" текст редактирования стал равен 'e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=8ca1000d8843cd1b11dc8eb43bdcf26e'
И я закрываю сеанс текущего клиента тестирования



