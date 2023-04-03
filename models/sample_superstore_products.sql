select        products.product_id,
              products.product_name,
              sub_categories.sub_category,
              categories.category
from          datalake.sample_superstore_products                    products
  left join   datalake.sample_superstore_sub_categories              sub_categories
    on        sub_categories.sub_category_id = products.sub_category_id
  left join   datalake.sample_superstore_categories categories
    on        categories.category_id = sub_categories.category_id
