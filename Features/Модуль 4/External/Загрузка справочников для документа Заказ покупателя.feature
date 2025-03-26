#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка справочников для документа Заказ покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка справочников для документа Заказ покупателя

	// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment' | 'Partner'                                                          | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb767f10805e2b' | 'False'        | 8      | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb767f10805e2a' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | ''                                                               | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | 'Розничное'          | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Agreements?ref=b76cbacb2511e57d11ebeab0dfce224a' | 'False'        | 9      | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | ''                                                                  | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | 'Розничный клиент 1' | ''                 | ''               | ''               |

	// Справочник.Companies

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country' | 'MainCompany' | 'Partner'                                                          | 'Type'                             | 'OurCompany' | 'Description_en'       | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e29' | 'False'        | 9      | ''        | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный покупатель' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b76cbacb2511e57d11ebeab0dfce2249' | 'False'        | 10     | ''        | ''            | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный клиент 1'   | ''                 | ''               | ''               |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment' | 'Description_en'       | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'False'        | ''       | 10     | 'True'     | 'False'  | 'False'    | 'False'    | ''               | 'Розничный покупатель' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'False'        | ''       | 12     | 'True'     | 'False'  | 'False'    | 'False'    | ''               | 'Розничный клиент 1'   | ''                 | ''               | ''               |

	