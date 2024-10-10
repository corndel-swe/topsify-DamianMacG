# Day 1 Exercises

Today's exercises focus on writing queries to get data out of the database and
save them into .txt files.

> [!IMPORTANT]
>
> Don't include any `.mode` at the top of your `.sql` files for the exercises -
> the tests are designed to work with the raw output of the query.

## Exercise 1: Simple selects

- [x] Read the docs on
      [select queries](https://tech-docs.corndel.com/sql/select-queries.html)

- [x] Open `exercises/1a.sql` and type the SQL needed to solve the exercise.

- [x] To create the report, run

  ```bash
  sqlite3 db/db.sqlite < exercises/1a.sql > reports/1a.txt
  ```

- [x] To run the tests, run

  ```bash
  ./test.sh
  ```

- [x] Commit and push!

- [x] Read the docs on
      [selecting with conditions](https://tech-docs.corndel.com/sql/select-queries.html)

- [x] Complete `exercises/1b.sql` in the same way we did `1a.sql`

## Exercise 2: Ordering results

- [x] Read the docs on
      [ordering results](https://tech-docs.corndel.com/sql/ordering-results.html)

- [x] Complete `exercises/2a.sql`

- [x] Complete `exercises/2b.sql`

## Exercise 3: Paginating results

- [x] Read the docs on
      [paginating results](https://tech-docs.corndel.com/sql/limit-offset.html)

- [x] Complete `exercises/3a.sql`

- [x] Complete `exercises/3b.sql`
