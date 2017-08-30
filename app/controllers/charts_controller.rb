class ChartsController < ApplicationController
    
  # 초기화
  @@bank_id = 0
  @@card_id = 0
  
    # 차트 출력
  def index
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
  
  # 카드 통계치 그래프 출력 컨트롤러
  # 지금은 안 쓰이고 index가 대신 담당
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
        score = [c.score1, c.score2, c.score3, c.score4, c.score5]
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
        score = [c.score1, c.score2, c.score3, c.score4, c.score5]
        0.upto(4) do |i|
            result[arr[i]] = score[i]
        end
      end
    end
    render json: result
  end

end
