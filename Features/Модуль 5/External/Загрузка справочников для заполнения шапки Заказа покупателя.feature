#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Загрузка справочников для заполнения шапки Заказа покупателя
   
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка справочников для заполнения шапки Заказа покупателя

	// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number'  | 'Date'               | 'PartnerSegment'                                                          | 'Partner'                                                          | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm'                                                              | 'Description_en'                                                  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'False'        | 1      | '123456'  | '01.01.2021 0:00:00' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | ''                                                                 | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByDocuments'  | ''                  | 'Enum.AgreementKinds.Regular' | 'True'           | 5000                | 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Соглашение с клиентами (расчет по документам + кредитный лимит)' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | 'False'        | 2      | '1234569' | '01.01.2021 0:00:00' | ''                                                                        | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''                                                                         | 'Индивидуальное соглашение 1 (расчет по соглашениям)'             | ''                 | ''               | ''               |

	// Справочник.Companies

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country'                                                           | 'MainCompany' | 'Partner'                                                          | 'Type'                          | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'False'        | 1      | 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | ''            | ''                                                                 | 'Enum.CompanyLegalType.Company' | 'True'       | 'Собственная компания 1' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'False'        | 5      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'Enum.CompanyLegalType.Company' | 'False'      | 'Клиент 1'               | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | 'False'        | 6      | ''                                                                  | ''            | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'Enum.CompanyLegalType.Company' | 'False'      | 'Клиент 2'               | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                               | 'MovementType'                                                                                    |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |

	// Справочник.Countries

	И я проверяю или создаю для справочника "Countries" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'LocalizationCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | 'False'        | 1      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | ''                 | 'Страна 1'       | ''                 | ''               | ''               |

	// Справочник.Currencies

	И я проверяю или создаю для справочника "Currencies" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Symbol' | 'NumericCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'False'        | 'USD'  | '$'      | '840'         | 'Доллар'         | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'False'        | 'EUR'  | '€'      | '978'         | 'Евро'           | ''                 | ''               | ''               |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment'                                                          | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'False'        | ''       | 1      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'Клиент 1 (1 соглашение)'    | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'False'        | ''       | 2      | 'True'     | 'False'  | 'False'    | 'False'    | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7956' | 'Клиент 2 (2 соглашения)'    | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | 'False'        | ''       | 3      | 'False'    | 'True'   | 'False'    | 'False'    | ''                                                                        | 'Поставщик 1 (1 соглашение)' | ''                 | ''               | ''               |

	// Справочник.PartnerSegments

	И я проверяю или создаю для справочника "PartnerSegments" объекты:
		| 'Ref'                                                                     | 'DeletionMark' | 'Code' | 'BanOnShipping' | 'Managers' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'False'        | 1      | 'False'         | 'True'     | 'Менеджер 1'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7956' | 'False'        | 2      | 'False'         | 'True'     | 'Менеджер 2'     | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | 'False'        | 3      | 'False'         | 'False'    | 'Основной'       | ''                 | ''               | ''               |

	// Справочник.PaymentSchedules

	И я проверяю или создаю для справочника "PaymentSchedules" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Code' | 'Description_en'  | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'False'        | 1      | 'Отсрочка 7 дней' | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "StagesOfPayment":
		| 'Ref'                                                                      | 'CalculationType'                          | 'ProportionOfPayment' | 'DuePeriod' |
		| 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Enum.CalculationTypes.PostShipmentCredit' | 100                   | 7           |

	// Справочник.PriceTypes

	И я проверяю или создаю для справочника "PriceTypes" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'ExternalDataProc' | 'ExternalDataProcSettings'              | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 'False'        | 2      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | ''                 | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'Опт'            | ''                 | ''               | ''               |

	// Справочник.Stores

	И я проверяю или создаю для справочника "Stores" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'UseGoodsReceipt' | 'UseShipmentConfirmation' | 'Transit' | 'NegativeStockControl' | 'Description_en'                | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'False'        | 1      | 'True'            | 'True'                    | 'False'   | 'True'                 | 'Склад 1 (с контролем остатка)' | ''                 | ''               | ''               |
