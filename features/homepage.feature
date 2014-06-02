Feature: homepage
  Scenario: Visit to the homepage
  Given I go to the homepage
  And the following books exists:
    | title                  | author          |    isbn_10 |       isbn_13 | rank |
    | City of Heavenly Fire  | Cassandra Clare | 1442416890 | 9781442416895 |    1 |
    | Field of Prey          | John Sandford   | 0399162380 | 9780399162381 |    5 |
    | Skin Game              | Jim Butcher     | 0451464397 | 9780451464392 |    3 |
    | The Fault in Our Stars | John Green      | 0525478817 | 9780525478812 |    1 |
    | Unlucky 13             | James Patterson | 0316211291 | 9780316211291 |    2 |
  Then I should should see a table of books sorted by rank, and title like this:
    | title                  | author          |    isbn_10 |       isbn_13 | rank |
    | City of Heavenly Fire  | Cassandra Clare | 1442416890 | 9781442416895 |    1 |
    | The Fault in Our Stars | John Green      | 0525478817 | 9780525478812 |    1 |
    | Unlucky 13             | James Patterson | 0316211291 | 9780316211291 |    2 |
    | Skin Game              | Jim Butcher     | 0451464397 | 9780451464392 |    3 |
    | Field of Prey          | John Sandford   | 0399162380 | 9780399162381 |    5 |
