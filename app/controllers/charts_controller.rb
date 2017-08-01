class ChartsController < ApplicationController
    
  # 초기화
  @@bank_id = 0
  @@card_id = 0
  
  # 카드 통계치 그래프 출력 컨트롤러
  def stat
    @cards = Card.all
    
    @@bank_id = params[:id1]
    @@card_id = params[:id2]
    
    @bankid = params[:id1]
    @cardid = params[:id2]
    
    @bankname = " "
    @cardname = " "
    Card.all.each do |c|
      if (c.card_id == @bankid && c.card_name == @cardid)
        @bankname = c.card_id
        @cardname = c.card_name
      end
    end
  end

  # BAR CHART 컨트롤러
  def results_by_barchart
    arr = ["주유", "쇼핑", "외식", "캐시백", "마일리지"]
    result = {}
    Card.all.each do |c|
      if (c.card_id == @@bank_id && c.card_name == @@card_id)
        score = [1, 2, 3, 4, 5]
        0.upto(4) do |i|
            result[arr[i]] = score[i]
        end
      end
    end
    render json: [{name: '점수', data: result}]
  end
  
  # PIE CHART 컨트롤러
  def results_by_piechart
    arr = ["주유", "쇼핑", "외식", "캐시백", "마일리지"]
    result = {}
    Card.all.each do |c|
      if (c.card_id == @@bank_id && c.card_name == @@card_id)
        score = [1, 2, 3, 4, 5]
        0.upto(4) do |i|
            result[arr[i]] = score[i]
        end
      end
    end
    render json: result
  end
  
end
