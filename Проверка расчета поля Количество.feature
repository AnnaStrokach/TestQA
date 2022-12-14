#language: ru

@tree

Функционал: <Проверка расчета поля Количество документа Заказ клиента>



Сценарий: <Проверка расчета поля Количество документа Заказ клиента>

Дано Я открыл новый сеанс TestClient или подключил уже существующий
И я закрываю все окна клиентского приложения

И В командном интерфейсе я выбираю 'Продажи' 'Заказы клиентов'
Тогда открылось окно 'Заказы клиентов'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно 'Заказ клиента (создание)'
И Заполнение шапки документа "Заказ"

И я перехожу к закладке с именем "ГруппаТовары"
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке 'мойка с-789'
И я перехожу к следующему реквизиту
И в таблице "Товары" из выпадающего списка с именем "ТоварыХарактеристика" я выбираю по строке 'мраморная'
И я перехожу к следующему реквизиту
И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '5,000'
И я перехожу к следующему реквизиту
И в таблице "Товары" из выпадающего списка с именем "ТоварыВидЦены" я выбираю точное значение 'Оптовая'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю по строке 'эмаль полимерон'
И я перехожу к следующему реквизиту
И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
И я перехожу к следующему реквизиту

И в таблице "Товары" из выпадающего списка с именем "ТоварыВидЦены" я выбираю точное значение 'Оптовая'
И я перехожу к следующему реквизиту
И в таблице "Товары" я активизирую поле с именем "ТоварыВидЦены"
И в таблице "Товары" из выпадающего списка с именем "ТоварыВидЦены" я выбираю точное значение '<произвольная>'
И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 500,00'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
Когда открылось окно 'Заказ клиента (создание) *'
И в таблице "Товары" я перехожу к строке:
	| 'N' | 'Вид цены' | 'Действия'      | 'Количество' | 'НДС'      | 'Номенклатура' | 'Отменено' | 'Серия'                  | 'Склад'                     | 'Содержание'                     | 'Ставка НДС' | 'Сумма'    | 'Сумма с НДС' | 'Упаковка' | 'Характеристика' | 'Цена'     |
	| '1' | 'Оптовая'  | 'К обеспечению' | '5,000'      | '1 562,50' | 'Мойка С-789'  | 'Нет'      | '<серия не указывается>' | 'Склад коммерческой службы' | '<для работ, оформляемых актом>' | '20%'        | '9 375,00' | '9 375'       | 'компл'    | 'Мраморная'      | '1 875,00' |
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я перехожу к строке:
	| 'N' | 'Вид цены'       | 'Действия'      | 'Количество' | 'НДС'      | 'Номенклатура'    | 'Отменено' | 'Серия'                  | 'Склад'                     | 'Содержание'                     | 'Ставка НДС' | 'Сумма'     | 'Сумма с НДС' | 'Упаковка' | 'Характеристика'                   | 'Цена'     |
	| '2' | '<произвольная>' | 'К обеспечению' | '10,000'     | '2 500,00' | 'Эмаль Полимерон' | 'Нет'      | '<серия не указывается>' | 'Склад коммерческой службы' | '<для работ, оформляемых актом>' | '20%'        | '15 000,00' | '15 000'      | 'кг'       | '<характеристики не используются>' | '1 500,00' |
И в таблице "Товары" я выбираю текущую строку
И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '15,000'
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'
И я жду открытия окна "Заказ клиента * от *" в течение 20 секунд
И я закрываю сеанс текущего клиента тестирования



