ALTER TABLE
  `academic-pier-405912.recipe_staging_dataset.dataset_telur` ADD COLUMN
IF NOT EXISTS Main_Ingredient STRING;
CREATE OR REPLACE TABLE
  `academic-pier-405912.recipe_dataset.D_dataset_telur` AS
SELECT
  IFNULL(Main_Ingredient,
    'Telur') AS Main_Ingredient,
  Title AS Recipe_Title,
  Ingredients,
  Steps,
  Loves,
  URL
FROM
  `academic-pier-405912.recipe_staging_dataset.dataset_telur`;