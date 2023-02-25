defmodule ExdurationTest do
  use ExUnit.Case

  test "it should parse 7 seconds" do
    assert Exduration.parse("0:07") === %Exduration{
             hours: 0,
             minutes: 0,
             seconds: 7
           }
  end

  test "it should parse 30 seconds" do
    assert Exduration.parse("0:30") === %Exduration{
             hours: 0,
             minutes: 0,
             seconds: 30
           }
  end

  test "it should parse 1 minute" do
    assert Exduration.parse("1:00") === %Exduration{
             hours: 0,
             minutes: 1,
             seconds: 0
           }
  end

  test "it should parse 12 minutes 12 seconds" do
    assert Exduration.parse("12:12") === %Exduration{
             hours: 0,
             minutes: 12,
             seconds: 12
           }
  end

  test "it should parse 1 hour 23 minutes 4 seconds" do
    assert Exduration.parse("1:23:04") === %Exduration{
             hours: 1,
             minutes: 23,
             seconds: 4
           }
  end

  test "it should parse 12 hours 23 minutes 4 seconds" do
    assert Exduration.parse("12:23:04") === %Exduration{
             hours: 12,
             minutes: 23,
             seconds: 4
           }
  end
  
  test "it should get seconds" do
    assert Exduration.seconds(%Exduration{
             hours: 12,
             minutes: 23,
             seconds: 4
           }) === 44584
  end

  test "it should get seconds with single digit hour" do
    assert Exduration.seconds(%Exduration{
             hours: 1,
             minutes: 23,
             seconds: 4
           }) === 4984
  end
end
