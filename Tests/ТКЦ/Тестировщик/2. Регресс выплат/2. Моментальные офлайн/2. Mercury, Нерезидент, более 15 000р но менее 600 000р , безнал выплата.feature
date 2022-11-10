﻿#language: ru

@tree

Функционал: <2. Mercury, Нерезидент, более 15 000р но менее 600 000р , безнал выплата>

//Контекст:

Сценарий: Идентификация участника перед выплатой
И я подключаю TestClient "ГСЛ2" логин "Тестировщик" пароль ""
И Я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'АРМ' 'Участники'
	Тогда открылось окно 'Участники: Участники'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Фамилия Имя'
	И в поле с именем 'Pattern' я ввожу текст 'Участник Для Автотестов Не Трогать Руками'
	И я нажимаю на кнопку с именем 'Find'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я перехожу к закладке с именем "ГруппаСписокДокументов"
	И я нажимаю на кнопку с именем 'СписокДокументовРедактироватьДокумент'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Участник Для Автотестов Не Трогать Руками (Участники)' в течение 20 секунд
	Тогда открылось окно 'Участники: Участники'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я перехожу к закладке с именем "ГруппаСписокДокументов"
	И я нажимаю на кнопку с именем 'СписокДокументовПодтвердитьДокумент'
	Тогда открылось окно 'Подтверждение документа'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я нажимаю на кнопку с именем 'ФормаЗакрыть'
	Тогда открылось окно 'Участники: Участники'
	И Я закрываю окно 'Участники: Участники'
	И я закрываю сеанс текущего клиента тестирования


Сценарий: Открытие клиента тестирования для выплат
И я подключаю TestClient "ТКЦ2" логин "Тестировщик" пароль ""
И Я закрываю все окна клиентского приложения

Сценарий: <Проверяем выплату билетов моментальных лотерей свыше 15000, но меньше 600 000 рублей. Безналичная выплата>

//Объявление переменных
И В командном интерфейсе я выбираю 'АРМ' 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я активизирую поле с именем "НомерБилета"
И я запоминаю значение текущего поля как "НомерБилетаПерем"
И в таблице "Список" я активизирую поле с именем "ЗащитныйКод"
И я запоминаю значение текущего поля как "ЗащитныйКодПерем"
И в таблице "Список" я активизирую поле с именем "НомерТелефона"
И я запоминаю значение текущего поля как "НомерТелефонаПерем"
//Завершение объявления переменных

//Начало блока "Общая часть заполнения заявки на выплату"
И В командном интерфейсе я выбираю 'АРМ' 'АРМ выплат'
Когда открылось окно 'АРМ выплат'
И из выпадающего списка с именем "Игрок" я выбираю по строке 'Участник Для Автотестов Не Трогать Руками'
И я перехожу к следующему реквизиту
Когда открылось окно 'АРМ выплат'
И я устанавливаю флаг с именем 'ПолныйКомплектДокументов'
И я перехожу к закладке с именем "БлокДанныеОБилете"
И в поле с именем 'НомерБилетаПоле' я ввожу значение переменной "НомерБилетаПерем"
И я перехожу к следующему реквизиту
Тогда открылось окно 'Введите защитный код'
И в поле с именем 'InputFld' я ввожу значение переменной "ЗащитныйКодПерем"
И я нажимаю на кнопку с именем 'OK'
И я перехожу к следующему реквизиту
И в поле с именем 'НомерТелефона' я ввожу значение переменной "НомерТелефонаПерем"
И я устанавливаю флаг с именем 'ИспользоватьНомерТелефонаДляОтправкиЧека'
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыВидОплаты"
И в таблице "Билеты" я выбираю текущую строку
И в таблице "Билеты" из выпадающего списка с именем "ВыплатыВидОплаты" я выбираю точное значение 'Безналичная оплата'
И в таблице "Билеты" я завершаю редактирование строки
И в таблице "Билеты" я активизирую поле с именем "ВыплатыДействительный"
И в таблице "Билеты" я устанавливаю флаг с именем 'ВыплатыДействительный'
//Объявление переменных
И в таблице "Билеты" я активизирую поле с именем "ВыплатыИгра"
И я запоминаю значение текущего поля как "ИграПерем"
И в таблице "Билеты" я активизирую поле "Тираж/Серия билета"
И я запоминаю значение текущего поля как "ТиражПерем"
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыСуммаВыигрыша"
И я запоминаю значение текущего поля как "СуммаПерем"
И в таблице "Билеты" я завершаю редактирование строки
Тогда В панели открытых я выбираю 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Билеты для тестирования'
И в поле с именем 'Игра' я ввожу значение переменной "ИграПерем"
И в поле с именем 'Тираж' я ввожу значение переменной "ТиражПерем"
И в поле с именем 'СуммаВыигрыша' я ввожу значение переменной "СуммаПерем"
И я нажимаю на кнопку 'Записать и закрыть'
И я жду закрытия окна 'Билеты для тестирования *' в течение 20 секунд
И Я закрываю окно 'Билеты для тестирования'
//Завершение объявления переменных
//Конец блока "Общая часть заполнения заявки на выплату"

//Начало блока "Актуализация резидентства"
И я нажимаю на кнопку с именем 'АктуализироватьРезидентство'
Тогда открылось окно 'Актуализация резидентства'
И из выпадающего списка с именем "СтатусНалогоплательщика" я выбираю точное значение 'Нерезидент'
И из выпадающего списка с именем "СтранаПроживания" я выбираю по строке 'Беларусь'
И в поле с именем 'АдресМестаЖительстваЗаПределамиРФ' я ввожу текст 'Тест'
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна 'Актуализация резидентства' в течение 20 секунд
//Конец блока "Актуализация резидентства"

// Начало блока "Экспертиза билета"
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "БилетыНеобходимаЭкспертиза"
И в таблице "Билеты" я устанавливаю флаг с именем 'БилетыНеобходимаЭкспертиза'
И в таблице "Билеты" я завершаю редактирование строки
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыСтатусРегистрации"
И в таблице "Билеты" я выбираю текущую строку
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'OK'
И я нажимаю на кнопку с именем 'ЗарегистрироватьБилеты'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button1'
Тогда открылось окно 'АРМ выплат'
И я перехожу к закладке с именем "СтраницаЭкспертиза"
И я меняю значение переключателя с именем 'ТипЭкспертизы' на 'Бестиражные'
И я нажимаю на кнопку с именем 'СоздатьДокументЭкспертизы'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Экспертиза (создание)'
И в таблице "Билеты" я нажимаю на кнопку с именем 'БилетыНайти1'
Тогда открылось окно 'Найти'
И из выпадающего списка "&Где искать" я выбираю точное значение 'Номер билета'
И в поле '&Что искать' я ввожу значение переменной 'НомерБилетаПерем'
И я нажимаю на кнопку '&Найти'
И в таблице "Билеты" я перехожу к строке:
	| 'N' | 'Подлинный' |
	| '1' | 'Нет'       |
И в таблице "Билеты" я активизирую поле с именем "БилетыПодлинный"
И в таблице "Билеты" я изменяю флаг с именем 'БилетыПодлинный'
И в таблице "Билеты" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Экспертиза (создание) *' в течение 20 секунд
Тогда открылось окно 'АРМ выплат'
И я перехожу к закладке с именем "СтраницаКонтрагенты"
//Конец блока "Экспертиза билета"

//Начало блока "Регистрация билета"
Когда открылось окно 'АРМ выплат: Заявка на выплату * от *'
И в таблице "Билеты" я выбираю текущую строку
И в таблице "Билеты" я активизирую поле с именем "ВыплатыОрганизатор"
//Конец блока "Регистрация билета"

//Начало блока "Создание Реестра выплат"
Когда открылось окно 'АРМ выплат: Заявка на выплату * от *'
И я перехожу к закладке с именем "СтраницаВыплаты"
И я перехожу к закладке с именем "БлокВРаботе"
И в таблице "ВыплатыВРаботе" я активизирую поле с именем "ВыплатыВРаботеИгрок"
Когда открылось окно 'АРМ выплат: Заявка на выплату * от *'
И я выбираю пункт контекстного меню с именем 'ВыплатыВРаботеНайти' на элементе формы с именем "ВыплатыВРаботе"
Тогда открылось окно 'Найти'
И из выпадающего списка "&Где искать" я выбираю точное значение 'Номер билета'
И в поле '&Что искать' я ввожу значение переменной 'НомерБилетаПерем'
И я нажимаю на кнопку '&Найти'
Тогда открылось окно 'АРМ выплат: Заявка на выплату * от *'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыНомерСтроки"
И в таблице "Билеты" я активизирую поле с именем "ВыплатыОрганизатор"
И в таблице "ВыплатыВРаботе" я активизирую поле с именем "ВыплатыВРаботеОплатить"
И в таблице "ВыплатыВРаботе" я изменяю флаг с именем 'ВыплатыВРаботеОплатить'
И в таблице "ВыплатыВРаботе" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'СформироватьРеестрВыплат'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И в таблице "Билеты" я нажимаю на кнопку с именем 'КнопкаРассчитатьНДФЛ'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И я активизирую поле с именем "Номер"
И я запоминаю значение текущего поля как "НомерРеестраВыплатПерем"
И я запоминаю заголовок формы в переменную "РеестрПерем"
И я нажимаю на кнопку 'Закрыть реестр'
И я нажимаю на кнопку 'Провести'
//Конец блока "Создание Реестра выплат"

//Начало блока "Проведение фискализации выигрыша"
И я нажимаю на кнопку с именем 'ФормаПечатьЧекаККМ'
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//Конец блока "Проведения фискализации выигрыша"

//Начало блока "Проверка успешности проставления идентификатора операции Ortax"
Когда открылось окно 'Реестр выплат * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Фиксация выигрышей'
И в таблице "Список" я активизирую поле с именем "ВыигрышЗафиксирован"
И в таблице "Список" поле с именем "ВыигрышЗафиксирован" имеет значение "Да"
И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реестр выплат * от *' в течение 20 секунд
//Конец блока "Проверка успешности проставления идентификатора операции Ortax"

//Начало блока "Удаление выплаченного билета в РС Билеты для тестирования"

И В командном интерфейсе я выбираю 'АРМ' 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокНайти'
Тогда открылось окно 'Найти'
И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'ID билета'
И в поле с именем 'Pattern' я ввожу значение переменной "НомерБилетаПерем"
И я нажимаю на кнопку с именем 'Find'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я активизирую поле с именем "Номер"
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем "Список"
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
//Конец блока "Удаление выплаченного билета в РС Билеты для тестирования"

И Я закрываю все окна клиентского приложения

И я закрываю сеанс текущего клиента тестирования