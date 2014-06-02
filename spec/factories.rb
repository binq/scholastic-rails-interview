FactoryGirl.define do
  factory :fault_in_our_stars_book, class: Book do
    title 'The Fault in Our Stars'
    author 'John Green'
    isbn_10 '0525478817'
    isbn_13 '9780525478812'
    rank 1
  end

  factory :invalid_isbn_10_dup_for_fault_in_our_stars_book, class: Book do
    title 'The Fault in Our Stars'
    author 'John Green'
    isbn_10 '052547881X'
    isbn_13 '9780525478812'
    rank 1
  end

  factory :invalid_isbn_13_dup_for_fault_in_our_stars_book, class: Book do
    title 'The Fault in Our Stars'
    author 'John Green'
    isbn_10 '0525478817'
    isbn_13 '978-0525478812'
    rank 1
  end

  factory :isbn_10_dup_for_fault_in_our_stars_book, class: Book do
    title 'The Fault in Our Stars'
    author 'John Green'
    isbn_10 '0525478817'
    isbn_13 '9780525478813'
    rank 2
  end

  factory :isbn_13_dup_for_fault_in_our_stars_book, class: Book do
    title 'The Fault in Our Stars'
    author 'John Green'
    isbn_10 '0525478818'
    isbn_13 '9780525478812'
    rank 2
  end
end
