//
//  Country.swift
//  CountryApp
//
//  Created by Nathan Morelli (student LM) on 12/28/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    var introduction: Introduction?
    var geography: Geography?
    var peopleAndSociety: PeopleAndSociety?
    var environment: Environment?
    var government: Government?
    var economy: Economy?
    var energy: Energy?
    var communications: Communications?
    var transportation: Transportation?
    var militaryAndSecurity: MilitaryAndSecurity?
    var terrorism: Terrorism?
    var transnationalIssues: TransnationalIssues?

    enum CodingKeys: String, CodingKey {
        case introduction = "Introduction"
        case geography = "Geography"
        case peopleAndSociety = "People and Society"
        case environment = "Environment"
        case government = "Government"
        case economy = "Economy"
        case energy = "Energy"
        case communications = "Communications"
        case transportation = "Transportation"
        case militaryAndSecurity = "Military and Security"
        case terrorism = "Terrorism"
        case transnationalIssues = "Transnational Issues"
    }
}

// MARK: - Communications
struct Communications: Codable {
    var telephonesFixedLines, telephonesMobileCellular: Telephones?
    var telecommunicationSystems: TelecommunicationSystems?
    var broadcastMedia, internetCountryCode: BroadcastMedia?
    var internetUsers: InternetUsers?
    var broadbandFixedSubscriptions: BroadbandFixedSubscriptions?

    enum CodingKeys: String, CodingKey {
        case telephonesFixedLines = "Telephones - fixed lines"
        case telephonesMobileCellular = "Telephones - mobile cellular"
        case telecommunicationSystems = "Telecommunication systems"
        case broadcastMedia = "Broadcast media"
        case internetCountryCode = "Internet country code"
        case internetUsers = "Internet users"
        case broadbandFixedSubscriptions = "Broadband - fixed subscriptions"
    }
}

// MARK: - BroadbandFixedSubscriptions
struct BroadbandFixedSubscriptions: Codable {
    var total, subscriptionsPer100Inhabitants: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case total
        case subscriptionsPer100Inhabitants = "subscriptions per 100 inhabitants"
    }
}

// MARK: - BroadcastMedia
struct BroadcastMedia: Codable {
    var text: String?
}

// MARK: - InternetUsers
struct InternetUsers: Codable {
    var total, percentOfPopulation: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case total
        case percentOfPopulation = "percent of population"
    }
}

// MARK: - TelecommunicationSystems
struct TelecommunicationSystems: Codable {
    var generalAssessment, domestic, international: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case generalAssessment = "general assessment"
        case domestic, international, note
    }
}

// MARK: - Telephones
struct Telephones: Codable {
    var totalSubscriptions, subscriptionsPer100Inhabitants: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalSubscriptions = "total subscriptions"
        case subscriptionsPer100Inhabitants = "subscriptions per 100 inhabitants"
    }
}

// MARK: - Economy
struct Economy: Codable {
    var economicOverview: BroadcastMedia?
    var realGDPPurchasingPowerParity: RealGDPPurchasingPowerParity?
    var realGDPGrowthRate: RealGDPGrowthRate?
    var realGDPPerCapita: RealGDPPerCapita?
    var gdpOfficialExchangeRate: BroadcastMedia?
    var inflationRateConsumerPrices: InflationRateConsumerPrices?
    var creditRatings: CreditRatings?
    var gdpCompositionBySectorOfOrigin: GdpCompositionBySectorOfOrigin?
    var gdpCompositionByEndUse: GDPCompositionByEndUse?
    var agriculturalProducts, industries, industrialProductionGrowthRate, laborForce: BroadcastMedia?
    var laborForceByOccupation: GdpCompositionBySectorOfOrigin?
    var unemploymentRate: UnemploymentRate?
    var youthUnemploymentRateAges1524: YouthUnemploymentRateAges1524?
    var populationBelowPovertyLine: BroadcastMedia?
    var giniIndexCoefficientDistributionOfFamilyIncome: GiniIndexCoefficientDistributionOfFamilyIncome?
    var householdIncomeOrConsumptionByPercentageShare: HouseholdIncomeOrConsumptionByPercentageShare?
    var budget: Budget?
    var budgetSurplusOrDeficit: BroadcastMedia?
    var publicDebt: PublicDebt?
    var taxesAndOtherRevenues, fiscalYear: BroadcastMedia?
    var currentAccountBalance: CurrentAccountBalance?
    var exports: Exports?
    var exportsPartners, exportsCommodities: BroadcastMedia?
    var imports: Imports?
    var importsPartners, importsCommodities: BroadcastMedia?
    var reservesOfForeignExchangeAndGold: ReservesOfForeignExchangeAndGold?
    var debtExternal: DebtExternal?
    var exchangeRates: ExchangeRates?

    enum CodingKeys: String, CodingKey {
        case economicOverview = "Economic overview"
        case realGDPPurchasingPowerParity = "Real GDP (purchasing power parity)"
        case realGDPGrowthRate = "Real GDP growth rate"
        case realGDPPerCapita = "Real GDP per capita"
        case gdpOfficialExchangeRate = "GDP (official exchange rate)"
        case inflationRateConsumerPrices = "Inflation rate (consumer prices)"
        case creditRatings = "Credit ratings"
        case gdpCompositionBySectorOfOrigin = "GDP - composition, by sector of origin"
        case gdpCompositionByEndUse = "GDP - composition, by end use"
        case agriculturalProducts = "Agricultural products"
        case industries = "Industries"
        case industrialProductionGrowthRate = "Industrial production growth rate"
        case laborForce = "Labor force"
        case laborForceByOccupation = "Labor force - by occupation"
        case unemploymentRate = "Unemployment rate"
        case youthUnemploymentRateAges1524 = "Youth unemployment rate (ages 15-24)"
        case populationBelowPovertyLine = "Population below poverty line"
        case giniIndexCoefficientDistributionOfFamilyIncome = "Gini Index coefficient - distribution of family income"
        case householdIncomeOrConsumptionByPercentageShare = "Household income or consumption by percentage share"
        case budget = "Budget"
        case budgetSurplusOrDeficit = "Budget surplus (+) or deficit (-)"
        case publicDebt = "Public debt"
        case taxesAndOtherRevenues = "Taxes and other revenues"
        case fiscalYear = "Fiscal year"
        case currentAccountBalance = "Current account balance"
        case exports = "Exports"
        case exportsPartners = "Exports - partners"
        case exportsCommodities = "Exports - commodities"
        case imports = "Imports"
        case importsPartners = "Imports - partners"
        case importsCommodities = "Imports - commodities"
        case reservesOfForeignExchangeAndGold = "Reserves of foreign exchange and gold"
        case debtExternal = "Debt - external"
        case exchangeRates = "Exchange rates"
    }
}

// MARK: - Budget
struct Budget: Codable {
    var revenues, expenditures: BroadcastMedia?
}

// MARK: - CreditRatings
struct CreditRatings: Codable {
    var fitchRating, moodySRating, standardPoorsRating: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case fitchRating = "Fitch rating"
        case moodySRating = "Moody's rating"
        case standardPoorsRating = "Standard & Poors rating"
        case note
    }
}

// MARK: - CurrentAccountBalance
struct CurrentAccountBalance: Codable {
    var currentAccountBalance2021, currentAccountBalance2020, currentAccountBalance2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case currentAccountBalance2021 = "Current account balance 2021"
        case currentAccountBalance2020 = "Current account balance 2020"
        case currentAccountBalance2019 = "Current account balance 2019"
    }
}

// MARK: - DebtExternal
struct DebtExternal: Codable {
    var debtExternal2019, debtExternal2018: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case debtExternal2019 = "Debt - external 2019"
        case debtExternal2018 = "Debt - external 2018"
    }
}

// MARK: - ExchangeRates
struct ExchangeRates: Codable {
    var currency, exchangeRates2021, exchangeRates2020, exchangeRates2019: BroadcastMedia?
    var exchangeRates2018, exchangeRates2017: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case exchangeRates2021 = "Exchange rates 2021"
        case exchangeRates2020 = "Exchange rates 2020"
        case exchangeRates2019 = "Exchange rates 2019"
        case exchangeRates2018 = "Exchange rates 2018"
        case exchangeRates2017 = "Exchange rates 2017"
    }
}

// MARK: - Exports
struct Exports: Codable {
    var exports2021, exports2020, exports2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case exports2021 = "Exports 2021"
        case exports2020 = "Exports 2020"
        case exports2019 = "Exports 2019"
    }
}

// MARK: - GDPCompositionByEndUse
struct GDPCompositionByEndUse: Codable {
    var householdConsumption, governmentConsumption, investmentInFixedCapital, investmentInInventories: BroadcastMedia?
    var exportsOfGoodsAndServices, importsOfGoodsAndServices: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case householdConsumption = "household consumption"
        case governmentConsumption = "government consumption"
        case investmentInFixedCapital = "investment in fixed capital"
        case investmentInInventories = "investment in inventories"
        case exportsOfGoodsAndServices = "exports of goods and services"
        case importsOfGoodsAndServices = "imports of goods and services"
    }
}

// MARK: - GdpCompositionBySectorOfOrigin
struct GdpCompositionBySectorOfOrigin: Codable {
    var agriculture, industry, services: BroadcastMedia?
}

// MARK: - GiniIndexCoefficientDistributionOfFamilyIncome
struct GiniIndexCoefficientDistributionOfFamilyIncome: Codable {
    var giniIndexCoefficientDistributionOfFamilyIncome2018: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case giniIndexCoefficientDistributionOfFamilyIncome2018 = "Gini Index coefficient - distribution of family income 2018"
    }
}

// MARK: - HouseholdIncomeOrConsumptionByPercentageShare
struct HouseholdIncomeOrConsumptionByPercentageShare: Codable {
    var lowest10, highest10: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case lowest10 = "lowest 10%"
        case highest10 = "highest 10%"
    }
}

// MARK: - Imports
struct Imports: Codable {
    var imports2021, imports2020, imports2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case imports2021 = "Imports 2021"
        case imports2020 = "Imports 2020"
        case imports2019 = "Imports 2019"
    }
}

// MARK: - InflationRateConsumerPrices
struct InflationRateConsumerPrices: Codable {
    var inflationRateConsumerPrices2021, inflationRateConsumerPrices2020, inflationRateConsumerPrices2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case inflationRateConsumerPrices2021 = "Inflation rate (consumer prices) 2021"
        case inflationRateConsumerPrices2020 = "Inflation rate (consumer prices) 2020"
        case inflationRateConsumerPrices2019 = "Inflation rate (consumer prices) 2019"
    }
}

// MARK: - PublicDebt
struct PublicDebt: Codable {
    var publicDebt2017, publicDebt2016: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case publicDebt2017 = "Public debt 2017"
        case publicDebt2016 = "Public debt 2016"
        case note
    }
}

// MARK: - RealGDPGrowthRate
struct RealGDPGrowthRate: Codable {
    var realGDPGrowthRate2021, realGDPGrowthRate2020, realGDPGrowthRate2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case realGDPGrowthRate2021 = "Real GDP growth rate 2021"
        case realGDPGrowthRate2020 = "Real GDP growth rate 2020"
        case realGDPGrowthRate2019 = "Real GDP growth rate 2019"
    }
}

// MARK: - RealGDPPerCapita
struct RealGDPPerCapita: Codable {
    var realGDPPerCapita2021, realGDPPerCapita2020, realGDPPerCapita2019: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case realGDPPerCapita2021 = "Real GDP per capita 2021"
        case realGDPPerCapita2020 = "Real GDP per capita 2020"
        case realGDPPerCapita2019 = "Real GDP per capita 2019"
        case note
    }
}

// MARK: - RealGDPPurchasingPowerParity
struct RealGDPPurchasingPowerParity: Codable {
    var realGDPPurchasingPowerParity2021, realGDPPurchasingPowerParity2020, realGDPPurchasingPowerParity2019: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case realGDPPurchasingPowerParity2021 = "Real GDP (purchasing power parity) 2021"
        case realGDPPurchasingPowerParity2020 = "Real GDP (purchasing power parity) 2020"
        case realGDPPurchasingPowerParity2019 = "Real GDP (purchasing power parity) 2019"
        case note
    }
}

// MARK: - ReservesOfForeignExchangeAndGold
struct ReservesOfForeignExchangeAndGold: Codable {
    var reservesOfForeignExchangeAndGold31December2021, reservesOfForeignExchangeAndGold31December2020, reservesOfForeignExchangeAndGold31December2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case reservesOfForeignExchangeAndGold31December2021 = "Reserves of foreign exchange and gold 31 December 2021"
        case reservesOfForeignExchangeAndGold31December2020 = "Reserves of foreign exchange and gold 31 December 2020"
        case reservesOfForeignExchangeAndGold31December2019 = "Reserves of foreign exchange and gold 31 December 2019"
    }
}

// MARK: - UnemploymentRate
struct UnemploymentRate: Codable {
    var unemploymentRate2021, unemploymentRate2020, unemploymentRate2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case unemploymentRate2021 = "Unemployment rate 2021"
        case unemploymentRate2020 = "Unemployment rate 2020"
        case unemploymentRate2019 = "Unemployment rate 2019"
    }
}

// MARK: - YouthUnemploymentRateAges1524
struct YouthUnemploymentRateAges1524: Codable {
    var total, male, female: BroadcastMedia?
}

// MARK: - Energy
struct Energy: Codable {
    var electricityAccess: ElectricityAccess?
    var electricity: Electricity?
    var electricityGenerationSources: ElectricityGenerationSources?
    var coal: Coal?
    var petroleum: Petroleum?
    var refinedPetroleumProductsProduction, refinedPetroleumProductsExports, refinedPetroleumProductsImports: BroadcastMedia?
    var naturalGas: Coal?
    var carbonDioxideEmissions: CarbonDioxideEmissions?
    var energyConsumptionPerCapita: EnergyConsumptionPerCapita?

    enum CodingKeys: String, CodingKey {
        case electricityAccess = "Electricity access"
        case electricity = "Electricity"
        case electricityGenerationSources = "Electricity generation sources"
        case coal = "Coal"
        case petroleum = "Petroleum"
        case refinedPetroleumProductsProduction = "Refined petroleum products - production"
        case refinedPetroleumProductsExports = "Refined petroleum products - exports"
        case refinedPetroleumProductsImports = "Refined petroleum products - imports"
        case naturalGas = "Natural gas"
        case carbonDioxideEmissions = "Carbon dioxide emissions"
        case energyConsumptionPerCapita = "Energy consumption per capita"
    }
}

// MARK: - CarbonDioxideEmissions
struct CarbonDioxideEmissions: Codable {
    var totalEmissions, fromCoalAndMetallurgicalCoke, fromPetroleumAndOtherLiquids, fromConsumedNaturalGas: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalEmissions = "total emissions"
        case fromCoalAndMetallurgicalCoke = "from coal and metallurgical coke"
        case fromPetroleumAndOtherLiquids = "from petroleum and other liquids"
        case fromConsumedNaturalGas = "from consumed natural gas"
    }
}

// MARK: - Coal
struct Coal: Codable {
    var production, consumption, exports, imports: BroadcastMedia?
    var provenReserves: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case production, consumption, exports, imports
        case provenReserves = "proven reserves"
    }
}

// MARK: - Electricity
struct Electricity: Codable {
    var installedGeneratingCapacity, consumption, exports, imports: BroadcastMedia?
    var transmissionDistributionLosses: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case installedGeneratingCapacity = "installed generating capacity"
        case consumption, exports, imports
        case transmissionDistributionLosses = "transmission/distribution losses"
    }
}

// MARK: - ElectricityAccess
struct ElectricityAccess: Codable {
    var electrificationTotalPopulation: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case electrificationTotalPopulation = "electrification - total population"
    }
}

// MARK: - ElectricityGenerationSources
struct ElectricityGenerationSources: Codable {
    var fossilFuels, nuclear, solar, wind: BroadcastMedia?
    var hydroelectricity, tideAndWave, geothermal, biomassAndWaste: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case fossilFuels = "fossil fuels"
        case nuclear, solar, wind, hydroelectricity
        case tideAndWave = "tide and wave"
        case geothermal
        case biomassAndWaste = "biomass and waste"
    }
}

// MARK: - EnergyConsumptionPerCapita
struct EnergyConsumptionPerCapita: Codable {
    var totalEnergyConsumptionPerCapita2019: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalEnergyConsumptionPerCapita2019 = "Total energy consumption per capita 2019"
    }
}

// MARK: - Petroleum
struct Petroleum: Codable {
    var totalPetroleumProduction, refinedPetroleumConsumption, crudeOilAndLeaseCondensateExports, crudeOilAndLeaseCondensateImports: BroadcastMedia?
    var crudeOilEstimatedReserves: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalPetroleumProduction = "total petroleum production"
        case refinedPetroleumConsumption = "refined petroleum consumption"
        case crudeOilAndLeaseCondensateExports = "crude oil and lease condensate exports"
        case crudeOilAndLeaseCondensateImports = "crude oil and lease condensate imports"
        case crudeOilEstimatedReserves = "crude oil estimated reserves"
    }
}

// MARK: - Environment
struct Environment: Codable {
    var environmentCurrentIssues: BroadcastMedia?
    var environmentInternationalAgreements: EnvironmentInternationalAgreements?
    var airPollutants: AirPollutants?
    var climate: BroadcastMedia?
    var landUse: LandUse?
    var urbanization: Urbanization?
    var revenueFromForestResources: RevenueFromForestResources?
    var revenueFromCoal: RevenueFromCoal?
    var wasteAndRecycling: WasteAndRecycling?
    var majorLakesAreaSqKM: MajorLakesAreaSqKM?
    var majorRiversByLengthInKM, majorWatershedsAreaSqKM: BroadcastMedia?
    var totalWaterWithdrawal: TotalWaterWithdrawal?
    var totalRenewableWaterResources: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case environmentCurrentIssues = "Environment - current issues"
        case environmentInternationalAgreements = "Environment - international agreements"
        case airPollutants = "Air pollutants"
        case climate = "Climate"
        case landUse = "Land use"
        case urbanization = "Urbanization"
        case revenueFromForestResources = "Revenue from forest resources"
        case revenueFromCoal = "Revenue from coal"
        case wasteAndRecycling = "Waste and recycling"
        case majorLakesAreaSqKM = "Major lakes (area sq km)"
        case majorRiversByLengthInKM = "Major rivers (by length in km)"
        case majorWatershedsAreaSqKM = "Major watersheds (area sq km)"
        case totalWaterWithdrawal = "Total water withdrawal"
        case totalRenewableWaterResources = "Total renewable water resources"
    }
}

// MARK: - AirPollutants
struct AirPollutants: Codable {
    var particulateMatterEmissions, carbonDioxideEmissions, methaneEmissions: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case particulateMatterEmissions = "particulate matter emissions"
        case carbonDioxideEmissions = "carbon dioxide emissions"
        case methaneEmissions = "methane emissions"
    }
}

// MARK: - EnvironmentInternationalAgreements
struct EnvironmentInternationalAgreements: Codable {
    var partyTo, signedButNotRatified: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case partyTo = "party to"
        case signedButNotRatified = "signed, but not ratified"
    }
}

// MARK: - LandUse
struct LandUse: Codable {
    var agriculturalLand, agriculturalLandArableLand, agriculturalLandPermanentCrops, agriculturalLandPermanentPasture: BroadcastMedia?
    var forest, other: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case agriculturalLand = "agricultural land"
        case agriculturalLandArableLand = "agricultural land: arable land"
        case agriculturalLandPermanentCrops = "agricultural land: permanent crops"
        case agriculturalLandPermanentPasture = "agricultural land: permanent pasture"
        case forest, other
    }
}

// MARK: - MajorLakesAreaSqKM
struct MajorLakesAreaSqKM: Codable {
    var freshWaterLakeS, saltWaterLakeS: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case freshWaterLakeS = "fresh water lake(s)"
        case saltWaterLakeS = "salt water lake(s)"
    }
}

// MARK: - RevenueFromCoal
struct RevenueFromCoal: Codable {
    var coalRevenues: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case coalRevenues = "coal revenues"
    }
}

// MARK: - RevenueFromForestResources
struct RevenueFromForestResources: Codable {
    var forestRevenues: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case forestRevenues = "forest revenues"
    }
}

// MARK: - TotalWaterWithdrawal
struct TotalWaterWithdrawal: Codable {
    var municipal, industrial, agricultural: BroadcastMedia?
}

// MARK: - Urbanization
struct Urbanization: Codable {
    var urbanPopulation, rateOfUrbanization: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case urbanPopulation = "urban population"
        case rateOfUrbanization = "rate of urbanization"
    }
}

// MARK: - WasteAndRecycling
struct WasteAndRecycling: Codable {
    var municipalSolidWasteGeneratedAnnually, municipalSolidWasteRecycledAnnually, percentOfMunicipalSolidWasteRecycled: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case municipalSolidWasteGeneratedAnnually = "municipal solid waste generated annually"
        case municipalSolidWasteRecycledAnnually = "municipal solid waste recycled annually"
        case percentOfMunicipalSolidWasteRecycled = "percent of municipal solid waste recycled"
    }
}

// MARK: - Geography
struct Geography: Codable {
    var location, geographicCoordinates, mapReferences: BroadcastMedia?
    var area: Area?
    var areaComparative: BroadcastMedia?
    var landBoundaries: LandBoundaries?
    var coastline: BroadcastMedia?
    var maritimeClaims: MaritimeClaims?
    var climate, terrain: BroadcastMedia?
    var elevation: Elevation?
    var naturalResources: BroadcastMedia?
    var landUse: LandUse?
    var irrigatedLand: BroadcastMedia?
    var majorLakesAreaSqKM: MajorLakesAreaSqKM?
    var majorRiversByLengthInKM, majorWatershedsAreaSqKM, populationDistribution, naturalHazards: BroadcastMedia?
    var geographyNote: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case location = "Location"
        case geographicCoordinates = "Geographic coordinates"
        case mapReferences = "Map references"
        case area = "Area"
        case areaComparative = "Area - comparative"
        case landBoundaries = "Land boundaries"
        case coastline = "Coastline"
        case maritimeClaims = "Maritime claims"
        case climate = "Climate"
        case terrain = "Terrain"
        case elevation = "Elevation"
        case naturalResources = "Natural resources"
        case landUse = "Land use"
        case irrigatedLand = "Irrigated land"
        case majorLakesAreaSqKM = "Major lakes (area sq km)"
        case majorRiversByLengthInKM = "Major rivers (by length in km)"
        case majorWatershedsAreaSqKM = "Major watersheds (area sq km)"
        case populationDistribution = "Population distribution"
        case naturalHazards = "Natural hazards"
        case geographyNote = "Geography - note"
    }
}

// MARK: - Area
struct Area: Codable {
    var total, land, water: BroadcastMedia?
}

// MARK: - Elevation
struct Elevation: Codable {
    var highestPoint, lowestPoint, meanElevation: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case highestPoint = "highest point"
        case lowestPoint = "lowest point"
        case meanElevation = "mean elevation"
    }
}

// MARK: - LandBoundaries
struct LandBoundaries: Codable {
    var total, borderCountries: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case total
        case borderCountries = "border countries"
    }
}

// MARK: - MaritimeClaims
struct MaritimeClaims: Codable {
    var territorialSea, exclusiveEconomicZone, continentalShelf: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case territorialSea = "territorial sea"
        case exclusiveEconomicZone = "exclusive economic zone"
        case continentalShelf = "continental shelf"
    }
}

// MARK: - Government
struct Government: Codable {
    var countryName: CountryName?
    var governmentType: BroadcastMedia?
    var capital: Capital?
    var administrativeDivisions, independence, nationalHoliday: BroadcastMedia?
    var constitution: Constitution?
    var legalSystem, internationalLawOrganizationParticipation: BroadcastMedia?
    var citizenship: Citizenship?
    var suffrage: BroadcastMedia?
    var executiveBranch: ExecutiveBranch?
    var legislativeBranch: LegislativeBranch?
    var judicialBranch: JudicialBranch?
    var politicalPartiesAndLeaders, internationalOrganizationParticipation: BroadcastMedia?
    var diplomaticRepresentationInTheUS: DiplomaticRepresentationInTheUS?
    var diplomaticRepresentationFromTheUS: DiplomaticRepresentationFromTheUS?
    var flagDescription, nationalSymbolS: BroadcastMedia?
    var nationalAnthem: NationalAnthem?
    var nationalHeritage: NationalHeritage?

    enum CodingKeys: String, CodingKey {
        case countryName = "Country name"
        case governmentType = "Government type"
        case capital = "Capital"
        case administrativeDivisions = "Administrative divisions"
        case independence = "Independence"
        case nationalHoliday = "National holiday"
        case constitution = "Constitution"
        case legalSystem = "Legal system"
        case internationalLawOrganizationParticipation = "International law organization participation"
        case citizenship = "Citizenship"
        case suffrage = "Suffrage"
        case executiveBranch = "Executive branch"
        case legislativeBranch = "Legislative branch"
        case judicialBranch = "Judicial branch"
        case politicalPartiesAndLeaders = "Political parties and leaders"
        case internationalOrganizationParticipation = "International organization participation"
        case diplomaticRepresentationInTheUS = "Diplomatic representation in the US"
        case diplomaticRepresentationFromTheUS = "Diplomatic representation from the US"
        case flagDescription = "Flag description"
        case nationalSymbolS = "National symbol(s)"
        case nationalAnthem = "National anthem"
        case nationalHeritage = "National heritage"
    }
}

// MARK: - Capital
struct Capital: Codable {
    var name, geographicCoordinates, timeDifference, daylightSavingTime: BroadcastMedia?
    var etymology: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case name
        case geographicCoordinates = "geographic coordinates"
        case timeDifference = "time difference"
        case daylightSavingTime = "daylight saving time"
        case etymology
    }
}

// MARK: - Citizenship
struct Citizenship: Codable {
    var citizenshipByBirth, citizenshipByDescentOnly, dualCitizenshipRecognized, residencyRequirementForNaturalization: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case citizenshipByBirth = "citizenship by birth"
        case citizenshipByDescentOnly = "citizenship by descent only"
        case dualCitizenshipRecognized = "dual citizenship recognized"
        case residencyRequirementForNaturalization = "residency requirement for naturalization"
    }
}

// MARK: - Constitution
struct Constitution: Codable {
    var history, amendments: BroadcastMedia?
}

// MARK: - CountryName
struct CountryName: Codable {
    var conventionalLongForm, conventionalShortForm, localLongForm, localShortForm: BroadcastMedia?
    var former, etymology: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case conventionalLongForm = "conventional long form"
        case conventionalShortForm = "conventional short form"
        case localLongForm = "local long form"
        case localShortForm = "local short form"
        case former, etymology
    }
}

// MARK: - DiplomaticRepresentationFromTheUS
struct DiplomaticRepresentationFromTheUS: Codable {
    var chiefOfMission, embassy, mailingAddress, telephone: BroadcastMedia?
    var fax, emailAddressAndWebsite, consulateSGeneral: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case chiefOfMission = "chief of mission"
        case embassy
        case mailingAddress = "mailing address"
        case telephone
        case fax = "FAX"
        case emailAddressAndWebsite = "email address and website"
        case consulateSGeneral = "consulate(s) general"
    }
}

// MARK: - DiplomaticRepresentationInTheUS
struct DiplomaticRepresentationInTheUS: Codable {
    var chiefOfMission, chancery, telephone, fax: BroadcastMedia?
    var emailAddressAndWebsite, consulateSGeneral: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case chiefOfMission = "chief of mission"
        case chancery, telephone
        case fax = "FAX"
        case emailAddressAndWebsite = "email address and website"
        case consulateSGeneral = "consulate(s) general"
    }
}

// MARK: - ExecutiveBranch
struct ExecutiveBranch: Codable {
    var chiefOfState, headOfGovernment, cabinet, electionsAppointments: BroadcastMedia?
    var electionResults: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case chiefOfState = "chief of state"
        case headOfGovernment = "head of government"
        case cabinet
        case electionsAppointments = "elections/appointments"
        case electionResults = "election results"
    }
}

// MARK: - JudicialBranch
struct JudicialBranch: Codable {
    var highestCourtS, judgeSelectionAndTermOfOffice, subordinateCourts: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case highestCourtS = "highest court(s)"
        case judgeSelectionAndTermOfOffice = "judge selection and term of office"
        case subordinateCourts = "subordinate courts"
    }
}

// MARK: - LegislativeBranch
struct LegislativeBranch: Codable {
    var description, elections, electionResults: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case description, elections
        case electionResults = "election results"
        case note
    }
}

// MARK: - NationalAnthem
struct NationalAnthem: Codable {
    var name, lyricsMusic: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case name
        case lyricsMusic = "lyrics/music"
        case note
    }
}

// MARK: - NationalHeritage
struct NationalHeritage: Codable {
    var totalWorldHeritageSites, selectedWorldHeritageSiteLocales: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalWorldHeritageSites = "total World Heritage Sites"
        case selectedWorldHeritageSiteLocales = "selected World Heritage Site locales"
    }
}

// MARK: - Introduction
struct Introduction: Codable {
    var background: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case background = "Background"
    }
}

// MARK: - MilitaryAndSecurity
struct MilitaryAndSecurity: Codable {
    var militaryAndSecurityForces: BroadcastMedia?
    var militaryExpenditures: MilitaryExpenditures?
    var militaryAndSecurityServicePersonnelStrengths: MilitaryAndSecurityServicePersonnelStrengths?
    var militaryEquipmentInventoriesAndAcquisitions: BroadcastMedia?
    var militaryServiceAgeAndObligation, militaryDeployments: MilitaryAndSecurityServicePersonnelStrengths?
    var militaryNote: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case militaryAndSecurityForces = "Military and security forces"
        case militaryExpenditures = "Military expenditures"
        case militaryAndSecurityServicePersonnelStrengths = "Military and security service personnel strengths"
        case militaryEquipmentInventoriesAndAcquisitions = "Military equipment inventories and acquisitions"
        case militaryServiceAgeAndObligation = "Military service age and obligation"
        case militaryDeployments = "Military deployments"
        case militaryNote = "Military - note"
    }
}

// MARK: - MilitaryAndSecurityServicePersonnelStrengths
struct MilitaryAndSecurityServicePersonnelStrengths: Codable {
    var text, note: String?
}

// MARK: - MilitaryExpenditures
struct MilitaryExpenditures: Codable {
    var militaryExpenditures2022, militaryExpenditures2021, militaryExpenditures2020, militaryExpenditures2019: BroadcastMedia?
    var militaryExpenditures2018: BroadcastMedia?
    var note: String?

    enum CodingKeys: String, CodingKey {
        case militaryExpenditures2022 = "Military Expenditures 2022"
        case militaryExpenditures2021 = "Military Expenditures 2021"
        case militaryExpenditures2020 = "Military Expenditures 2020"
        case militaryExpenditures2019 = "Military Expenditures 2019"
        case militaryExpenditures2018 = "Military Expenditures 2018"
        case note
    }
}

// MARK: - PeopleAndSociety
struct PeopleAndSociety: Codable {
    var population: BroadcastMedia?
    var nationality: Nationality?
    var ethnicGroups: MilitaryAndSecurityServicePersonnelStrengths?
    var languages: Languages?
    var religions: BroadcastMedia?
    var ageStructure: AgeStructure?
    var dependencyRatios: DependencyRatios?
    var medianAge: YouthUnemploymentRateAges1524?
    var populationGrowthRate, birthRate, deathRate, netMigrationRate: BroadcastMedia?
    var populationDistribution: BroadcastMedia?
    var urbanization: Urbanization?
    var majorUrbanAreasPopulation: BroadcastMedia?
    var sexRatio: [String: BroadcastMedia]?
    var motherSMeanAgeAtFirstBirth, maternalMortalityRatio: BroadcastMedia?
    var infantMortalityRate: YouthUnemploymentRateAges1524?
    var lifeExpectancyAtBirth: LifeExpectancyAtBirth?
    var totalFertilityRate, grossReproductionRate: BroadcastMedia?
    var contraceptivePrevalenceRate: MilitaryAndSecurityServicePersonnelStrengths?
    var drinkingWaterSource: DrinkingWaterSource?
    var currentHealthExpenditure, physiciansDensity, hospitalBedDensity: BroadcastMedia?
    var sanitationFacilityAccess: DrinkingWaterSource?
    var hivAIDSAdultPrevalenceRate, obesityAdultPrevalenceRate: BroadcastMedia?
    var alcoholConsumptionPerCapita: AlcoholConsumptionPerCapita?
    var tobaccoUse: YouthUnemploymentRateAges1524?
    var childrenUnderTheAgeOf5YearsUnderweight, currentlyMarriedWomenAges1549, educationExpenditures: BroadcastMedia?
    var literacy: LifeExpectancyAtBirth?
    var schoolLifeExpectancyPrimaryToTertiaryEducation, youthUnemploymentRateAges1524: YouthUnemploymentRateAges1524?

    enum CodingKeys: String, CodingKey {
        case population = "Population"
        case nationality = "Nationality"
        case ethnicGroups = "Ethnic groups"
        case languages = "Languages"
        case religions = "Religions"
        case ageStructure = "Age structure"
        case dependencyRatios = "Dependency ratios"
        case medianAge = "Median age"
        case populationGrowthRate = "Population growth rate"
        case birthRate = "Birth rate"
        case deathRate = "Death rate"
        case netMigrationRate = "Net migration rate"
        case populationDistribution = "Population distribution"
        case urbanization = "Urbanization"
        case majorUrbanAreasPopulation = "Major urban areas - population"
        case sexRatio = "Sex ratio"
        case motherSMeanAgeAtFirstBirth = "Mother's mean age at first birth"
        case maternalMortalityRatio = "Maternal mortality ratio"
        case infantMortalityRate = "Infant mortality rate"
        case lifeExpectancyAtBirth = "Life expectancy at birth"
        case totalFertilityRate = "Total fertility rate"
        case grossReproductionRate = "Gross reproduction rate"
        case contraceptivePrevalenceRate = "Contraceptive prevalence rate"
        case drinkingWaterSource = "Drinking water source"
        case currentHealthExpenditure = "Current health expenditure"
        case physiciansDensity = "Physicians density"
        case hospitalBedDensity = "Hospital bed density"
        case sanitationFacilityAccess = "Sanitation facility access"
        case hivAIDSAdultPrevalenceRate = "HIV/AIDS - adult prevalence rate"
        case obesityAdultPrevalenceRate = "Obesity - adult prevalence rate"
        case alcoholConsumptionPerCapita = "Alcohol consumption per capita"
        case tobaccoUse = "Tobacco use"
        case childrenUnderTheAgeOf5YearsUnderweight = "Children under the age of 5 years underweight"
        case currentlyMarriedWomenAges1549 = "Currently married women (ages 15-49)"
        case educationExpenditures = "Education expenditures"
        case literacy = "Literacy"
        case schoolLifeExpectancyPrimaryToTertiaryEducation = "School life expectancy (primary to tertiary education)"
        case youthUnemploymentRateAges1524 = "Youth unemployment rate (ages 15-24)"
    }
}

// MARK: - AgeStructure
struct AgeStructure: Codable {
    var the014Years, the1524Years, the2554Years, the5564Years: BroadcastMedia?
    var the65YearsAndOver: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case the014Years = "0-14 years"
        case the1524Years = "15-24 years"
        case the2554Years = "25-54 years"
        case the5564Years = "55-64 years"
        case the65YearsAndOver = "65 years and over"
    }
}

// MARK: - AlcoholConsumptionPerCapita
struct AlcoholConsumptionPerCapita: Codable {
    var total, beer, wine, spirits: BroadcastMedia?
    var otherAlcohols: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case total, beer, wine, spirits
        case otherAlcohols = "other alcohols"
    }
}

// MARK: - DependencyRatios
struct DependencyRatios: Codable {
    var totalDependencyRatio, youthDependencyRatio, elderlyDependencyRatio, potentialSupportRatio: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalDependencyRatio = "total dependency ratio"
        case youthDependencyRatio = "youth dependency ratio"
        case elderlyDependencyRatio = "elderly dependency ratio"
        case potentialSupportRatio = "potential support ratio"
    }
}

// MARK: - DrinkingWaterSource
struct DrinkingWaterSource: Codable {
    var improvedUrban, improvedRural, improvedTotal, unimprovedUrban: BroadcastMedia?
    var unimprovedRural, unimprovedTotal: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case improvedUrban = "improved: urban"
        case improvedRural = "improved: rural"
        case improvedTotal = "improved: total"
        case unimprovedUrban = "unimproved: urban"
        case unimprovedRural = "unimproved: rural"
        case unimprovedTotal = "unimproved: total"
    }
}

// MARK: - Languages
struct Languages: Codable {
    var languages, majorLanguageSampleS: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case languages = "Languages"
        case majorLanguageSampleS = "major-language sample(s)"
    }
}

// MARK: - LifeExpectancyAtBirth
struct LifeExpectancyAtBirth: Codable {
    var totalPopulation, male, female: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case totalPopulation = "total population"
        case male, female
    }
}

// MARK: - Nationality
struct Nationality: Codable {
    var noun, adjective: BroadcastMedia?
}

// MARK: - Terrorism
struct Terrorism: Codable {
    var terroristGroupS: MilitaryAndSecurityServicePersonnelStrengths?

    enum CodingKeys: String, CodingKey {
        case terroristGroupS = "Terrorist group(s)"
    }
}

// MARK: - TransnationalIssues
struct TransnationalIssues: Codable {
    var disputesInternational: BroadcastMedia?
    var refugeesAndInternallyDisplacedPersons: RefugeesAndInternallyDisplacedPersons?
    var illicitDrugs: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case disputesInternational = "Disputes - international"
        case refugeesAndInternallyDisplacedPersons = "Refugees and internally displaced persons"
        case illicitDrugs = "Illicit drugs"
    }
}

// MARK: - RefugeesAndInternallyDisplacedPersons
struct RefugeesAndInternallyDisplacedPersons: Codable {
    var refugeesCountryOfOrigin, statelessPersons: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case refugeesCountryOfOrigin = "refugees (country of origin)"
        case statelessPersons = "stateless persons"
    }
}

// MARK: - Transportation
struct Transportation: Codable {
    var nationalAirTransportSystem: NationalAirTransportSystem?
    var civilAircraftRegistrationCountryCodePrefix: BroadcastMedia?
    var airports: Airports?
    var airportsWithPavedRunways, airportsWithUnpavedRunways: [String: BroadcastMedia]?
    var heliports, pipelines: BroadcastMedia?
    var railways: Railways?
    var roadways: Roadways?
    var waterways: BroadcastMedia?
    var merchantMarine: MerchantMarine?
    var portsAndTerminals: PortsAndTerminals?
    var transportationNote: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case nationalAirTransportSystem = "National air transport system"
        case civilAircraftRegistrationCountryCodePrefix = "Civil aircraft registration country code prefix"
        case airports = "Airports"
        case airportsWithPavedRunways = "Airports - with paved runways"
        case airportsWithUnpavedRunways = "Airports - with unpaved runways"
        case heliports = "Heliports"
        case pipelines = "Pipelines"
        case railways = "Railways"
        case roadways = "Roadways"
        case waterways = "Waterways"
        case merchantMarine = "Merchant marine"
        case portsAndTerminals = "Ports and terminals"
        case transportationNote = "Transportation - note"
    }
}

// MARK: - Airports
struct Airports: Codable {
    var total: BroadcastMedia?
}

// MARK: - MerchantMarine
struct MerchantMarine: Codable {
    var total, byType: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case total
        case byType = "by type"
    }
}

// MARK: - NationalAirTransportSystem
struct NationalAirTransportSystem: Codable {
    var numberOfRegisteredAirCarriers, inventoryOfRegisteredAircraftOperatedByAirCarriers, annualPassengerTrafficOnRegisteredAirCarriers, annualFreightTrafficOnRegisteredAirCarriers: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case numberOfRegisteredAirCarriers = "number of registered air carriers"
        case inventoryOfRegisteredAircraftOperatedByAirCarriers = "inventory of registered aircraft operated by air carriers"
        case annualPassengerTrafficOnRegisteredAirCarriers = "annual passenger traffic on registered air carriers"
        case annualFreightTrafficOnRegisteredAirCarriers = "annual freight traffic on registered air carriers"
    }
}

// MARK: - PortsAndTerminals
struct PortsAndTerminals: Codable {
    var majorSeaportS, oilTerminalS, containerPortSTEUs, lngTerminalSImport: BroadcastMedia?
    var riverPortS: BroadcastMedia?

    enum CodingKeys: String, CodingKey {
        case majorSeaportS = "major seaport(s)"
        case oilTerminalS = "oil terminal(s)"
        case containerPortSTEUs = "container port(s) (TEUs)"
        case lngTerminalSImport = "LNG terminal(s) (import)"
        case riverPortS = "river port(s)"
    }
}

// MARK: - Railways
struct Railways: Codable {
    var total: BroadcastMedia?
    var note: String?
}

// MARK: - Roadways
struct Roadways: Codable {
    var total, paved: BroadcastMedia?
    var note: String?
}
