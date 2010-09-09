FancySpec describe: NilClass with: |it| {
  it should: "be false for calling and: with any value" for: 'and: when: {
    nil and: true . should == nil
    nil and: 'foo . should == nil
    nil and: nil . should == nil
  }

  it should: "be false for calling && with any value" for: '&& when: {
    (nil && true) should == nil
    (nil && 'foo) should == nil
    (nil && nil) should == nil
  }

  it should: "be true for calling or: with any non-nil value" for: 'or: when: {
    nil or: true . should == true
    nil or: 'foo . should == true
  }

  it should: "be nil for calling or: with a nil value" for: 'or: when: {
    nil or: nil . should == nil
  }

  it should: "be true for calling || with any non-nil value" for: '|| when: {
    (nil || true) should == true
    (nil || 'foo) should == true
  }

  it should: "be nil for calling || with a nil value" for: '|| when: {
    (nil || nil) should == nil
  }

  it should: "NOT call the block" for: 'if_true: when: {
    nil if_true: { 'then } . should == nil
  }

  it should: "call the block" for: 'if_false: when: {
    nil if_false: { 'false } . should == 'false
  }

  it should: "be nil" for: 'nil? when: {
    nil nil? should == true
  }

  it should: "be false" for: 'false? when: {
    nil false? should == true
  }

  it should: "NOT be true" for: 'true? when: {
    nil true? should == nil
  }

  it should: "call the block if nil" for: 'if_nil: when: {
    nil if_nil: { 'is_nil } . should == 'is_nil
  }
}
