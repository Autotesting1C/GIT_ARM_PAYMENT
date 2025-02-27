﻿#language: ru

@tree

Функциональность: 7. Дымовые тесты "Документы"

//Контекст:

Сценарий: Открытие клиента тестирования для выплат
И я подключаю TestClient "ГСЛ2" логин "Тестировщик" пароль ""
И Я закрываю все окна клиентского приложения
	
Сценарий: Открытие формы списка "Анкета" 

	Дано Я открываю основную форму списка документа "Анкета"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Анкета"
	И Я закрываю текущее окно


Сценарий: Открытие формы списка "НазначениеОпросов" 

	Дано Я открываю основную форму списка документа "НазначениеОпросов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа НазначениеОпросов"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "НазначениеОпросов"

	Дано Я открываю основную форму документа "НазначениеОпросов"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа НазначениеОпросов"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ОтзывСогласияНаОбработкуПерсональныхДанных" 

	Дано Я открываю основную форму списка документа "ОтзывСогласияНаОбработкуПерсональныхДанных"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ОтзывСогласияНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ОтзывСогласияНаОбработкуПерсональныхДанных"

	Дано Я открываю основную форму документа "ОтзывСогласияНаОбработкуПерсональныхДанных"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ОтзывСогласияНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "СогласиеНаОбработкуПерсональныхДанных" 

	Дано Я открываю основную форму списка документа "СогласиеНаОбработкуПерсональныхДанных"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа СогласиеНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "СогласиеНаОбработкуПерсональныхДанных"

	Дано Я открываю основную форму документа "СогласиеНаОбработкуПерсональныхДанных"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа СогласиеНаОбработкуПерсональныхДанных"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ЭлектронноеПисьмоВходящее" 

	Дано Я открываю основную форму списка документа "ЭлектронноеПисьмоВходящее"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЭлектронноеПисьмоВходящее"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "КассоваяСмена" 

	Дано Я открываю основную форму списка документа "КассоваяСмена"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа КассоваяСмена"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "КассоваяСмена"

	Дано Я открываю основную форму документа "КассоваяСмена"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа КассоваяСмена"
	И Я закрываю текущее окно
	
Сценарий: Открытие формы списка "Экспертиза" 

	Дано Я открываю основную форму списка документа "Экспертиза"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Экспертиза"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "Экспертиза"

	Дано Я открываю основную форму документа "Экспертиза"
	И я нажимаю на кнопку с именем 'Button0'	
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа Экспертиза"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "РеестрВыплат" 

	Дано Я открываю основную форму списка документа "РеестрВыплат"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РеестрВыплат"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "РеестрВыплат"

	Дано Я открываю основную форму документа "РеестрВыплат"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РеестрВыплат"
	И Я закрываю текущее окно

Сценарий: Открытие формы списка "ЗаявкаНаВыплату" 

	Дано Я открываю основную форму списка документа "ЗаявкаНаВыплату"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЗаявкаНаВыплату"
	И Я закрываю текущее окно

//Сценарий: Открытие формы объекта "ЗаявкаНаВыплату"
//
//	Дано Я открываю основную форму документа "ЗаявкаНаВыплату"
//	Если появилось предупреждение тогда
//		Тогда я вызываю исключение "Не удалось открыть форму документа ЗаявкаНаВыплату"
//	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "РегистрацияНДФЛИгроков" 

	Дано Я открываю основную форму списка документа "РегистрацияНДФЛИгроков"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РегистрацияНДФЛИгроков"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "РегистрацияНДФЛИгроков"

	Дано Я открываю основную форму документа "РегистрацияНДФЛИгроков"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа РегистрацияНДФЛИгроков"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ЗагрузкаНеПроданныхБилетовМЛ" 

	Дано Я открываю основную форму списка документа "ЗагрузкаНеПроданныхБилетовМЛ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЗагрузкаНеПроданныхБилетовМЛ"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ЗагрузкаНеПроданныхБилетовМЛ"

	Дано Я открываю основную форму документа "ЗагрузкаНеПроданныхБилетовМЛ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЗагрузкаНеПроданныхБилетовМЛ"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ГрафикВыплат" 

	Дано Я открываю основную форму списка документа "ГрафикВыплат"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ГрафикВыплат"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ГрафикВыплат"

	Дано Я открываю основную форму документа "ГрафикВыплат"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ГрафикВыплат"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ЧекККМ" 

	Дано Я открываю основную форму списка документа "ЧекККМ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЧекККМ"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ЧекККМ"

	Дано Я открываю основную форму документа "ЧекККМ"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ЧекККМ"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "КассовыйЧекКоррекции" 

	Дано Я открываю основную форму списка документа "КассовыйЧекКоррекции"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа КассовыйЧекКоррекции"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "КассовыйЧекКоррекции"

	Дано Я открываю основную форму документа "КассовыйЧекКоррекции"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа КассовыйЧекКоррекции"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ВыдачаВещевогоВыигрыша" 

	Дано Я открываю основную форму списка документа "ВыдачаВещевогоВыигрыша"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ВыдачаВещевогоВыигрыша"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ВыдачаВещевогоВыигрыша"

	Дано Я открываю основную форму документа "ВыдачаВещевогоВыигрыша"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ВыдачаВещевогоВыигрыша"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ВыплатыOrtax" 

	Дано Я открываю основную форму списка документа "ВыплатыOrtax"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ВыплатыOrtax"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "ВыплатыOrtax"

	Дано Я открываю основную форму документа "ВыплатыOrtax"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ВыплатыOrtax"
	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ИзменениеСтатусаБлокировки" 

	Дано Я открываю основную форму списка документа "ИзменениеСтатусаБлокировки"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ИзменениеСтатусаБлокировки"
	И Я закрываю текущее окно

//Сценарий: Открытие формы объекта "ИзменениеСтатусаБлокировки"
//
//	Дано Я открываю основную форму документа "ИзменениеСтатусаБлокировки"
//	Если появилось предупреждение тогда
//		Тогда я вызываю исключение "Не удалось открыть форму документа ИзменениеСтатусаБлокировки"
//	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "ПочтовыеСообщения" 

	Дано Я открываю основную форму списка документа "ПочтовыеСообщения"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа ПочтовыеСообщения"
	И Я закрываю текущее окно

//Сценарий: Открытие формы объекта "ПочтовыеСообщения"
//
//	Дано Я открываю основную форму документа "ПочтовыеСообщения"
//	Если появилось предупреждение тогда
//		Тогда я вызываю исключение "Не удалось открыть форму документа ПочтовыеСообщения"
//	И Я закрываю текущее окно

	
//Сценарий: Открытие формы списка "РегистрацияВыплатыВручную" 
//
//	Дано Я открываю основную форму списка документа "РегистрацияВыплатыВручную"
//	Если появилось предупреждение тогда
//		Тогда я вызываю исключение "Не удалось открыть форму документа РегистрацияВыплатыВручную"
//	И Я закрываю текущее окно

//Сценарий: Открытие формы объекта "РегистрацияВыплатыВручную"
//
//	Дано Я открываю основную форму документа "РегистрацияВыплатыВручную"
//	Если появилось предупреждение тогда
//		Тогда я вызываю исключение "Не удалось открыть форму документа РегистрацияВыплатыВручную"
//	И Я закрываю текущее окно

	
Сценарий: Открытие формы списка "БезналичнаяВыплата" 

	Дано Я открываю основную форму списка документа "БезналичнаяВыплата"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа БезналичнаяВыплата"
	И Я закрываю текущее окно

Сценарий: Открытие формы объекта "БезналичнаяВыплата"

	Дано Я открываю основную форму документа "БезналичнаяВыплата"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму документа БезналичнаяВыплата"
	И Я закрываю текущее окно


И Я закрываю все окна клиентского приложения

И я закрываю сеанс текущего клиента тестирования