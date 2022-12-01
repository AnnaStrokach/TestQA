﻿
#language: ru

@tree

Функционал: Тестирование отчета Остатки товаров

Как Тетсировщик я хочу
протестировать отчет 
чтобы проверить работоспособность отчета

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: Тестирование отчета Остатки товаров
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
Тогда открылось окно 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
Тогда открылось окно 'Выбор варианта отчета'
Тогда таблица "СписокНастроек" стала равной:
	| 'Представление'                      |
	| 'Основной'                           |
	| 'Остатки товаров с характеристиками' |
И в таблице "СписокНастроек" я перехожу к строке по шаблону
	| 'Представление' |
	| 'Основной'      |

И я нажимаю на кнопку с именем 'Загрузить'
Тогда открылось окно 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаСформировать'
И пауза 20
Дано Табличный документ "Результат" равен  макету "ОбразецОтчетОстаткиТоваров" по шаблону
И в табличном документе 'Результат' ячейка с адресом "R26C6" равна "4 326,00"


