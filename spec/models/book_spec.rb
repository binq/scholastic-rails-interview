require 'spec_helper'

describe Book do
  describe "a new book" do
    subject do
      Book.create(attributes_for(:fault_in_our_stars_book))
    end

    it "should be able to save successfully" do
      stub = build_stubbed(:fault_in_our_stars_book)

      subject.errors.messages.should == {}
      subject.title.should == stub.title
      subject.author.should == stub.author
      subject.isbn_10.should == stub.isbn_10
      subject.isbn_13.should == stub.isbn_13
      subject.rank.should == stub.rank
    end
  end

  describe "a book with a invalid ISBN 10" do
    subject do
      Book.create(attributes_for(:invalid_isbn_10_dup_for_fault_in_our_stars_book))
    end

    it "should have an error" do
      subject.errors.added? :isbn_10, :numericality
    end
  end

  describe "a book with a invalid ISBN 13" do
    subject do
      Book.create(attributes_for(:invalid_isbn_13_dup_for_fault_in_our_stars_book))
    end

    it "should have an error" do
      subject.errors.added? :isbn_13, :numericality
    end
  end

  describe "a book with a ISBN 10 that already exists" do
    subject do
      create(:fault_in_our_stars_book)
      Book.create(attributes_for(:isbn_10_dup_for_fault_in_our_stars_book))
    end

    it "should have an error" do
      subject.errors.added? :isbn_10, :taken
    end
  end

  describe "a book with a ISBN 13 that already exists" do
    subject do
      create(:fault_in_our_stars_book)
      Book.create(attributes_for(:isbn_13_dup_for_fault_in_our_stars_book))
    end

    it "should have an error" do
      subject.errors.added? :isbn_13, :taken
    end
  end
end
