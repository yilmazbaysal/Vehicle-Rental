CREATE OR REPLACE VIEW BRANCH_DATA AS (
  SELECT
    B.ID AS BRANCH_ID,
    NAME,
    COUNTY_ID,
    VEHICLE_ID,
    IS_AVAILABLE,
    PRICE,
    USER_ID
  FROM
    BRANCH B
    LEFT JOIN BRANCH_RLTD_VEHICLE BV ON B.ID = BV.BRANCH_ID
    LEFT JOIN BRANCH_RLTD_USER BU ON B.ID = BU.BRANCH_ID
);


CREATE OR REPLACE VIEW VEHICLE_DETAILS AS (
  SELECT
    V.*,
    BV.PRICE,
    BV.IS_AVAILABLE,
    BH.NAME AS BRANCH_NAME,
    BH.ADDRESS AS BRANCH_ADDRESS,
    CY.NAME AS COUNTY,
    CI.NAME AS CITY,
    CR.NAME AS COUNTRY,
    M.NAME  AS MODEL_NAME,
    M.VEHICLE_TYPE,
    E.VOLUME,
    E.POWER,
    M.FUEL_TYPE,
    G.TYPE  AS GEAR_TYPE,
    BD.NAME AS BRAND_NAME
  FROM VEHICLE V
    JOIN BRANCH_RLTD_VEHICLE BV ON V.ID = BV.VEHICLE_ID
    JOIN BRANCH BH ON BV.BRANCH_ID = BH.ID
    JOIN COUNTY CY ON BH.COUNTY_ID = CY.ID
    JOIN CITY CI ON CY.CITY_ID = CI.ID
    JOIN COUNTRY CR ON CI.COUNTRY_ID = CR.ID
    JOIN MODEL M ON V.MODEL_ID = M.ID
    JOIN BRAND BD ON M.BRAND_ID = BD.ID
    JOIN ENGINE E ON M.ENGINE_ID = E.ID
    JOIN GEAR G ON M.GEAR_ID = G.ID
);


CREATE OR REPLACE VIEW RENT_DETAILS AS (
  SELECT
    BV.VEHICLE_ID,
    H.START_DATE,
    H.DUE_DATE,
    H.PAYMENT_TYPE,
    U.USERNAME,
    U.FIRST_NAME,
    U.LAST_NAME
  FROM HIRE H
    JOIN BRANCH_RLTD_VEHICLE BV ON H.BRANCH_RLTD_VEHICLE_ID = BV.ID
    JOIN "USER" U ON H.USER_ID = U.ID
  WHERE DUE_DATE > SYSDATE
);


CREATE OR REPLACE VIEW VEHICLE_RENT_COUNTS AS
  SELECT
    V.ID VEHICLE_ID,
    V.PLATE,
    RC.RENT_COUNT
  FROM VEHICLE V
    JOIN
    (
      SELECT
        BV.VEHICLE_ID,
        COUNT(*) RENT_COUNT
      FROM HIRE H
        JOIN BRANCH_RLTD_VEHICLE BV ON H.BRANCH_RLTD_VEHICLE_ID = BV.ID
      GROUP BY BV.VEHICLE_ID
    ) RC

      ON V.ID = RC.VEHICLE_ID
  ORDER BY RENT_COUNT DESC;


CREATE OR REPLACE VIEW VEHICLE_RENT_DURATIONS AS
  SELECT
    V.ID                   VEHICLE_ID,
    V.PLATE,
    ROUND(RD.TMP_DURATION) RENT_DURATION
  FROM VEHICLE V
    JOIN
    (
      SELECT
        BV.VEHICLE_ID,
        SUM(H.DUE_DATE - H.START_DATE) TMP_DURATION
      FROM HIRE H
        JOIN BRANCH_RLTD_VEHICLE BV ON H.BRANCH_RLTD_VEHICLE_ID = BV.ID
      GROUP BY BV.VEHICLE_ID
    ) RD

      ON V.ID = RD.VEHICLE_ID
  ORDER BY RD.TMP_DURATION DESC;


CREATE OR REPLACE VIEW MOST_EXPENSIVE_VEHICLE AS
  SELECT
    V.ID VEHICLE_ID,
    V.PLATE,
    BV.PRICE
  FROM VEHICLE V
    JOIN BRANCH_RLTD_VEHICLE BV ON V.ID = BV.VEHICLE_ID
    JOIN (
           SELECT MAX(TMP_BV.PRICE) max_price
           FROM BRANCH_RLTD_VEHICLE TMP_BV
         ) MP
      ON BV.PRICE = MP.max_price;


CREATE OR REPLACE VIEW CHEAPEST_VEHICLE AS
  SELECT
    V.ID VEHICLE_ID,
    V.PLATE,
    BV.PRICE
  FROM VEHICLE V
    JOIN BRANCH_RLTD_VEHICLE BV ON V.ID = BV.VEHICLE_ID
    JOIN (
           SELECT MIN(TMP_BV.PRICE) min_price
           FROM BRANCH_RLTD_VEHICLE TMP_BV
         ) MP
      ON BV.PRICE = MP.min_price;


CREATE OR REPLACE VIEW BRANCH_AVG_PRICES AS
  SELECT
    B.ID   BRANCH_ID,
    B.NAME BRANCH_NAME,
    TMP_AVG_PRICES.AVG_PRICE
  FROM BRANCH B
    JOIN (
           SELECT
             BV.BRANCH_ID,
             AVG(PRICE) AVG_PRICE
           FROM BRANCH_RLTD_VEHICLE BV
           GROUP BY BV.BRANCH_ID
         ) TMP_AVG_PRICES

      ON B.ID = TMP_AVG_PRICES.BRANCH_ID
  ORDER BY TMP_AVG_PRICES.AVG_PRICE;


CREATE OR REPLACE VIEW COUNTRY_PREFERRED_BRAND AS
  SELECT
    COUNTRY_C.NAME COUNTRY_NAME,
    BRAND_C.NAME   BRAND_NAME
  FROM
    COUNTRY COUNTRY_C
    JOIN (
           SELECT
             COUNTRY_A.ID      COUNTRY_ID_A,
             BRAND_A.ID        BRAND_ID,
             COUNT(BRAND_A.ID) BRAND_COUNT
           FROM
             COUNTRY COUNTRY_A
             JOIN CITY CITY_A ON COUNTRY_A.ID = CITY_A.COUNTRY_ID
             JOIN COUNTY COUNTY_A ON CITY_A.ID = COUNTY_A.CITY_ID
             JOIN BRANCH BRANCH_A ON COUNTY_A.ID = BRANCH_A.COUNTY_ID
             JOIN BRANCH_RLTD_VEHICLE BV_A ON BRANCH_A.ID = BV_A.BRANCH_ID
             JOIN HIRE HIRE_A ON BV_A.ID = HIRE_A.BRANCH_RLTD_VEHICLE_ID
             JOIN VEHICLE VEHICLE_A ON BV_A.VEHICLE_ID = VEHICLE_A.ID
             JOIN MODEL MODEL_A ON VEHICLE_A.MODEL_ID = MODEL_A.ID
             JOIN BRAND BRAND_A ON MODEL_A.BRAND_ID = BRAND_A.ID
           GROUP BY COUNTRY_A.ID, BRAND_A.ID
           HAVING COUNT(BRAND_A.ID) = (
             SELECT MAX(COUNT(BRAND_B.ID)) MAX_BRAND_COUNT
             FROM
               COUNTRY COUNTRY_B
               JOIN CITY CITY_B ON COUNTRY_B.ID = CITY_B.COUNTRY_ID
               JOIN COUNTY COUNTY_B ON CITY_B.ID = COUNTY_B.CITY_ID
               JOIN BRANCH BRANCH_B ON COUNTY_B.ID = BRANCH_B.COUNTY_ID
               JOIN BRANCH_RLTD_VEHICLE BV_B ON BRANCH_B.ID = BV_B.BRANCH_ID
               JOIN HIRE HIRE_B ON BV_B.ID = HIRE_B.BRANCH_RLTD_VEHICLE_ID
               JOIN VEHICLE VEHICLE_B ON BV_B.VEHICLE_ID = VEHICLE_B.ID
               JOIN MODEL MODEL_B ON VEHICLE_B.MODEL_ID = MODEL_B.ID
               JOIN BRAND BRAND_B ON MODEL_B.BRAND_ID = BRAND_B.ID
             WHERE COUNTRY_A.ID = COUNTRY_B.ID
             GROUP BY BRAND_B.ID
           )
         ) TMP_C_B
      ON COUNTRY_C.ID = TMP_C_B.COUNTRY_ID_A
    JOIN BRAND BRAND_C ON BRAND_C.ID = TMP_C_B.BRAND_ID;


CREATE OR REPLACE VIEW COUNTRY_PREFFERED_FUEL AS
  SELECT
    COUNTRY_C.NAME COUNTRY_NAME,
    TMP_C_F.FUEL_TYPE
  FROM
    COUNTRY COUNTRY_C
    JOIN (
           SELECT
             COUNTRY_A.ID             COUNTRY_ID_A,
             MODEL_A.FUEL_TYPE,
             COUNT(MODEL_A.FUEL_TYPE) FUEL_TYPE_COUNT
           FROM
             COUNTRY COUNTRY_A
             JOIN CITY CITY_A ON COUNTRY_A.ID = CITY_A.COUNTRY_ID
             JOIN COUNTY COUNTY_A ON CITY_A.ID = COUNTY_A.CITY_ID
             JOIN BRANCH BRANCH_A ON COUNTY_A.ID = BRANCH_A.COUNTY_ID
             JOIN BRANCH_RLTD_VEHICLE BV_A ON BRANCH_A.ID = BV_A.BRANCH_ID
             JOIN HIRE HIRE_A ON BV_A.ID = HIRE_A.BRANCH_RLTD_VEHICLE_ID
             JOIN VEHICLE VEHICLE_A ON BV_A.VEHICLE_ID = VEHICLE_A.ID
             JOIN MODEL MODEL_A ON VEHICLE_A.MODEL_ID = MODEL_A.ID
           GROUP BY COUNTRY_A.ID, MODEL_A.FUEL_TYPE
           HAVING COUNT(MODEL_A.FUEL_TYPE) = (
             SELECT MAX(COUNT(MODEL_B.FUEL_TYPE)) MAX_FUEL_TYPE_COUNT
             FROM
               COUNTRY COUNTRY_B
               JOIN CITY CITY_B ON COUNTRY_B.ID = CITY_B.COUNTRY_ID
               JOIN COUNTY COUNTY_B ON CITY_B.ID = COUNTY_B.CITY_ID
               JOIN BRANCH BRANCH_B ON COUNTY_B.ID = BRANCH_B.COUNTY_ID
               JOIN BRANCH_RLTD_VEHICLE BV_B ON BRANCH_B.ID = BV_B.BRANCH_ID
               JOIN HIRE HIRE_B ON BV_B.ID = HIRE_B.BRANCH_RLTD_VEHICLE_ID
               JOIN VEHICLE VEHICLE_B ON BV_B.VEHICLE_ID = VEHICLE_B.ID
               JOIN MODEL MODEL_B ON VEHICLE_B.MODEL_ID = MODEL_B.ID
             WHERE COUNTRY_A.ID = COUNTRY_B.ID
             GROUP BY MODEL_B.FUEL_TYPE
           )
         ) TMP_C_F
      ON COUNTRY_C.ID = TMP_C_F.COUNTRY_ID_A;