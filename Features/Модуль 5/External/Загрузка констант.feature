#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка констант

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка констант

	И я перезаполняю константу "SaasMode" значением "False"
	И я перезаполняю константу "EnableLinkedRowsIntegrity" значением "False"
	И я перезаполняю константу "UseLockDataModification" значением "False"
	И я перезаполняю константу "UseItemKey" значением "True"
	И я перезаполняю константу "UseCompanies" значением "True"
	И я перезаполняю константу "NotFirstStart" значением "False"

