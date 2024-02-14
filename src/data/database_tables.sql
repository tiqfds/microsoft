DROP TABLE if EXISTS historical_data;
DROP TABLE if EXISTS microsoft;
DROP TABLE if EXISTS balance_sheet_data;
DROP TABLE if EXISTS income_statement_data;
DROP TABLE if EXISTS cash_flow_data;

CREATE TABLE historical_data (
    date DATE PRIMARY KEY,
    "open" FLOAT NOT NULL,
    high FLOAT NOT NULL,
    low FLOAT NOT NULL,
    "close" FLOAT NOT NULL,
    adjusted_close FLOAT NOT NULL,
    volume BIGINT NOT NULL,
    dividend_amount FLOAT NOT NULL,
    split_coefficient FLOAT NOT NULL
);

CREATE TABLE microsoft (
    Symbol VARCHAR(255),
    AssetType VARCHAR(255),
    Name VARCHAR(255),
    Description TEXT,
    CIK VARCHAR(255),
    Exchange VARCHAR(255),
    Currency VARCHAR(255),
    Country VARCHAR(255),
    Sector VARCHAR(255),
    Industry VARCHAR(255),
    Address VARCHAR(255),
    FiscalYearEnd VARCHAR(255),
    LatestQuarter DATE,
    MarketCapitalization BIGINT,
    EBITDA VARCHAR(255),
    PERatio VARCHAR(255),
    PEGRatio VARCHAR(255),
    BookValue VARCHAR(255),
    DividendPerShare VARCHAR(255),
    DividendYield VARCHAR(255),
    EPS VARCHAR(255),
    RevenuePerShareTTM VARCHAR(255),
    ProfitMargin VARCHAR(255),
    OperatingMarginTTM VARCHAR(255),
    ReturnOnAssetsTTM VARCHAR(255),
    ReturnOnEquityTTM VARCHAR(255),
    RevenueTTM BIGINT,
    GrossProfitTTM VARCHAR(255),
    DilutedEPSTTM VARCHAR(255),
    QuarterlyEarningsGrowthYOY VARCHAR(255),
    QuarterlyRevenueGrowthYOY VARCHAR(255),
    AnalystTargetPrice VARCHAR(255),
    TrailingPE VARCHAR(255),
    ForwardPE VARCHAR(255),
    PriceToSalesRatioTTM VARCHAR(255),
    PriceToBookRatio VARCHAR(255),
    EVToRevenue VARCHAR(255),
    EVToEBITDA VARCHAR(255),
    Beta VARCHAR(255),
    "52WeekHigh" VARCHAR(255),
    "52WeekLow" VARCHAR(255),
    "50DayMovingAverage" VARCHAR(255),
    "200DayMovingAverage" VARCHAR(255),
    SharesOutstanding BIGINT,
    DividendDate DATE,
    ExDividendDate DATE
);


CREATE TABLE balance_sheet_data (
    fiscalDateEnding DATE, 
    reportedCurrency VARCHAR(250),
    totalAssets FLOAT,
    totalCurrentAssets FLOAT,
    cashAndCashEquivalentsAtCarryingValue FLOAT,
    cashAndShortTermInvestments FLOAT,
    inventory FLOAT,
    currentNetReceivables FLOAT,
    totalNonCurrentAssets FLOAT,
    propertyPlantEquipment FLOAT,
    accumulatedDepreciationAmortizationPPE FLOAT,
    intangibleAssets FLOAT,
    intangibleAssetsExcludingGoodwill FLOAT,
    goodwill FLOAT,
    investments FLOAT,
    longTermInvestments FLOAT,
    shortTermInvestments FLOAT,
    otherCurrentAssets FLOAT,
    otherNonCurrentAssets FLOAT,
    totalLiabilities FLOAT,
    totalCurrentLiabilities FLOAT,
    currentAccountsPayable FLOAT,
    deferredRevenue VARCHAR(255),
    currentDebt FLOAT,
    shortTermDebt FLOAT,
    totalNonCurrentLiabilities FLOAT,
    capitalLeaseObligations VARCHAR(255),
    longTermDebt FLOAT,
    currentLongTermDebt FLOAT,
    longTermDebtNoncurrent FLOAT,
    shortLongTermDebtTotal FLOAT,
    otherCurrentLiabilities FLOAT,
    otherNonCurrentLiabilities FLOAT,
    totalShareholderEquity FLOAT,
    treasuryStock VARCHAR(255),
    retainedEarnings FLOAT,
    commonStock FLOAT,
    commonStockSharesOutstanding BIGINT
);



CREATE TABLE income_statement_data (
    fiscalDateEnding DATE,
    reportedCurrency VARCHAR(50),
    grossProfit FLOAT,
    totalRevenue FLOAT,
    costOfRevenue FLOAT,
    costofGoodsAndServicesSold FLOAT,
    operatingIncome FLOAT,
    sellingGeneralAndAdministrative FLOAT,
    researchAndDevelopment FLOAT,
    operatingExpenses FLOAT,
    investmentIncomeNet FLOAT,
    netInterestIncome FLOAT,
    interestIncome VARCHAR(255),
    interestExpense FLOAT,
    nonInterestIncome FLOAT,
    otherNonOperatingIncome FLOAT,
    depreciation TEXT,
    depreciationAndAmortization FLOAT,
    incomeBeforeTax FLOAT,
    incomeTaxExpense FLOAT,
    interestAndDebtExpense FLOAT,
    netIncomeFromContinuingOperations FLOAT,
    comprehensiveIncomeNetOfTax FLOAT,
    ebit FLOAT,
    ebitda FLOAT,
    netIncome FLOAT
);

CREATE TABLE cash_flow_data (
    fiscalDateEnding DATE,
    reportedCurrency VARCHAR(50),
    operatingCashflow FLOAT,
    paymentsForOperatingActivities FLOAT,
    proceedsFromOperatingActivities VARCHAR(50),
    changeInOperatingLiabilities FLOAT,
    changeInOperatingAssets FLOAT,
    depreciationDepletionAndAmortization FLOAT,
    capitalExpenditures FLOAT,
    changeInReceivables FLOAT,
    changeInInventory FLOAT,
    profitLoss FLOAT,
    cashflowFromInvestment FLOAT,
    cashflowFromFinancing FLOAT,
    proceedsFromRepaymentsOfShortTermDebt FLOAT,
    paymentsForRepurchaseOfCommonStock FLOAT,
    paymentsForRepurchaseOfEquity FLOAT,
    paymentsForRepurchaseOfPreferredStock VARCHAR(50),
    dividendPayout FLOAT,
    dividendPayoutCommonStock FLOAT,
    dividendPayoutPreferredStock VARCHAR(50),
    proceedsFromIssuanceOfCommonStock FLOAT,
    proceedsFromIssuanceOfLongTermDebtAndCapitalSecuritiesNet VARCHAR(50),
    proceedsFromIssuanceOfPreferredStock VARCHAR(50),
    proceedsFromRepurchaseOfEquity FLOAT,
    proceedsFromSaleOfTreasuryStock VARCHAR(50),
    changeInCashAndCashEquivalents FLOAT,
    changeInExchangeRate VARCHAR(255),
    netIncome FLOAT
);
