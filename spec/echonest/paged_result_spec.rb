require File.dirname(__FILE__) + "/../spec_helper.rb"

include EchoNest

describe "PagedResult" do
  before :each do
    @docs = mock("docs", :length => 2)
    @results = mock("results", :docs => @docs)
    @block_body = mock("block body")
    @block = Proc.new { |*args| @block_body.called(*args) }
    @page = PagedResult.new @results, &@block

    @docs2 = mock("docs2", :length => 2)
    @page2 = mock("page2", :docs => @docs2)
    @block_body.stub!(:called).and_return(@page2)

  end

  describe "each" do
    it "should iterate over items in results" do
      @docs.should_receive(:each)
      @page.each 
    end
  end

  describe "[]" do
    it "should return the nth doc" do
      @docs.should_receive('[]').twice().with(1).and_return(:doc)
      @page[1].should == :doc
    end  
        
    it "should get the next page if index is out of range" do
      @docs.should_receive('[]').at_least(1).and_return(nil)
      @page.should_receive(:next_page)
      @page[2]
    end
    
  end
  
  describe "next_page" do
  
    before(:each) do
      @merged_docs = mock("Merged Docs", :length => 4)
      @docs.stub!('+').and_return(@merged_docs)
    end
  
    it "should fetch the next page" do
      @block_body.should_receive(:called).with(2, 15).and_return(@page2)
      @page.next_page 
    end  
  
    it "should update the delegate" do
      @docs.should_receive('+').with(@docs2).and_return(@merged_docs)
      @page.next_page 
      @page.length.should == 4
    end
    
  
  end
  
  describe "length" do
  
  end


end
