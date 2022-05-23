<%@page import="spectrum.mbtiResult.vo.MbtiResultVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MbtiResultVO mbtiResultVO = (MbtiResultVO) request.getAttribute("mbtiResultVO");
    int mbtiIndicatorsE = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsEI()));
    int mbtiIndicatorsI = (int) Math.round(100 - mbtiIndicatorsE);
    int mbtiIndicatorsS = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsSN()));
    int mbtiIndicatorsN = (int) Math.round(100 - mbtiIndicatorsS);
    int mbtiIndicatorsT = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsTF()));
    int mbtiIndicatorsF = (int) Math.round(100 - mbtiIndicatorsT);
    int mbtiIndicatorsJ = (int) Math.round(Double.parseDouble(mbtiResultVO.getMbtiIndicatorsJP()));
    int mbtiIndicatorsP = (int) Math.round(100 - mbtiIndicatorsJ);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ISFP</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
  .row > p{
      margin-top: 0.4rem;
      margin-bottom: 0.4rem;
  }

  .card{
  max-width: 60rem;
  left: 50%;
  top: 60%;
  position: absolute;
  transform: translate(-50%, -50%);
  }
  .card-title{
    margin-bottom: 0;
  }

  body{
margin-top: 1000px;
  }
</style>
</head>
<body>
<div style="position: absolute; top: 0;  width: 100%;">
    <%@include file="/navbar.jsp" %>
</div>
<div class="card mb-3">
  <h3 class="card-header text-center">"ISFP" “호기심 많은 예술가” "성인군자형"</h3>
  <div class="card-body">
      <h5 class="card-title text-center">에너지의 방향</h5>
      <div class="container">
        <div class="row">
          <p class="col">내향</p>
          <p class="col text-end">외향</p>
      </div>
      </div>
      <div class="progress">
          <div class="progress-bar bg-success" role="progressbar" style="width: <%=mbtiIndicatorsI%>%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsI%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsE%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
      <h5 class="card-title text-center">사람이나 사물을 인식하는 방식</h5>
      <div class="container">
          <div class="row">
            <p class="col">감각</p>
            <p class="col text-end">직관</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-info" role="progressbar" style="width: <%=mbtiIndicatorsS%>%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsS%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsN%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
      <h5 class="card-title text-center">판단의 근거</h5>
      <div class="container">
          <div class="row">
            <p class="col">감정</p>
            <p class="col text-end">사고</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-warning" role="progressbar" style="width: <%=mbtiIndicatorsF%>%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsF%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsT%>%</p>
        </div>
        </div>
  </div>
  <div class="card-body">
  <h5 class="card-title text-center">선호하는 삶의 패턴</h5>
  <div class="container">
      <div class="row">
        <p class="col">인식</p>
        <p class="col text-end">판단</p>
    </div>
    </div>
  <div class="progress">
      <div class="progress-bar bg-danger" role="progressbar" style="width: <%=mbtiIndicatorsP%>%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
  </div>
  <div class="container">
      <div class="row">
        <p class="col"><%=mbtiIndicatorsP%>%</p>
        <p class="col text-end"><%=mbtiIndicatorsJ%>%</p>
    </div>
    </div>
    </div>
  <div class="card-footer text-muted">
      간략한 검사의 결과로 검사결과의 정확도는 보장되지 않습니다.
  </div>
</div>

<div class="container">
<figure class="text-center">
  <blockquote class="blockquote">
    <p>저는 하루 동안에도 변화를 거듭합니다.<br> 아침에 눈을 뜨면 한 사람이 있습니다. 그리고 잠을 청하러 갈 때면 저는 확신합니다.<br> 거기엔 또 다른 제 자신이 있다는 것을 말이죠.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    BOB DYLAN <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    모험가형 사람은 일반적으로 사람들이 생각하듯 야외에서 앙증맞은 나무 그림을 그리고 있는 그런 유형의 예술가는 아니지만, 진정한 예술가라고 할 수 있습니다. 실상 상당수 많은 이들이 그러한 능력을 충분히 갖추고 있기도 합니다. 이들은 그들의 심미안이나 디자인 감각, 심지어는 그들의 선택이나 행위를 통하여 사회적 관습이라는 한계를 뛰어넘고자 합니다. 실험적인 아름다움이나 행위를 통해 전통적으로 기대되는 행동양식이나 관습에 도전장을 내미는 이들은 "저를 가두어두려 하지 마세요!"라고 수없이 외칩니다.
</p>
<img src="<%=request.getContextPath()%>/imeges/explorers_Adventurer_ISFP_introduction.png" class="img-fluid" alt="explorers_Adventurer_ISFP">
<br>

<h3>자기 자신에 대한 만족</h3>
<p class="lead">
  이들은 다양한 아이디어나 사람들로부터 영감을 받아 다채로우면서도 감각적인 삶을 살아갑니다. 그들이 받은 영감을 본인만의 시각으로 재해석하여 새로운 것을 발견하고 탐험함으로써 즐거움을 느끼기도 하는 이들은 그 어떤 유형의 사람보다 탐험이나 실험 정신이 뛰어납니다. 어디로 튈지 모르는 즉흥적인 성향으로 간혹 이들을 예측하는 것이 어려운데, 이는 가까운 친구나 사랑하는 사람들 역시 예외가 아닙니다.
</p>
<p class="lead">
  그럼에도 불구하고 단연 내향적 성향을 가지고 있는 모험가형 사람들은 스포트라이트를 벗어나 재충전을 위해 혼자만의 시간을 갖곤 하는데, 이는 주위 사람들은 한번 더 놀라게 하기도 합니다. 하지만 이들이 혼자 있다고 게으르게 넋 놓고 앉아 있는 것은 아닙니다. 이 시간은 그들이 가진 원리원칙을 재고하는 자기 성찰을 위한 시간으로, 과거나 미래에 집착하지 않고 순전히 그들이 누구인지 자신을 들여다보는 시간입니다. 그리고는 이들은 곧 언제 그랬냐는 듯이 사람들 앞에 변화된 모습으로 '짠'하고 나타납니다.
</p>
<p class="lead">
  넘치는 열정을 쏟아부으며 정열적인 삶을 살아가는 모험가형 사람은 다른 유형의 사람들에 비해 도박이나 익스트림 스포츠와 같이 위험성이 내재한 활동을 즐기는 경향이 있습니다. 그나마 다행인 것은 환경이나 상황 조율 능력이 뛰어나 대부분의 사람보다 소질이 있다는 것입니다. 다른 이들과 어울리는 것을 좋아하기도 하는 이들은 거부할 수 없는 그들만의 매력을 가지고 있습니다.
</p>
<blockquote class="blockquote">
  <p>
    모험가형 사람들은 타인의 작은 칭찬에도 쉽게 자극받아 무책임하고 무모한 행동을 일삼을 수 있다는 것을 그들 자신 역시 잘 알고 있습니다.
  </p>
</blockquote>
<p class="lead">
  반대로 이들이 누군가로부터 비판을 받을 경우, 상황을 안 좋게 몰고 갈 수도 있습니다. 타인의 적절한 비판은 오히려 다른 관점으로 받아들여 새로운 방안을 모색하는 가치 있는 용도로 활용하기도 하는 반면, 신랄하거나 진중치 못한 비판은 자칫하면 모험가 사람을 욱하게 만들어 이들의 분노가 그리 아름답지만은 않은 모습으로 표출될 수도 있습니다.
</p>
<p class="lead">
  모험가형 사람은 타인의 감정을 잘 살피며 조화를 중요시 여깁니다. 이 때문에 비난이나 비판을 받는 경우, 화가 어느 정도 누그러질 때까지 기다리는 것이 이들에게는 쉽지 않은 일입니다. 하지만 좋은 일이건 나쁜 일이건 영원히 지속되는 것은 없듯이 일단 분노의 감정이 수그러들면 이들은 과거는 과거일 뿐이라고 치부하며 마치 아무 일도 없었다는 듯이 다시금 그들의 삶을 살아갑니다.
</p>
<br>

<h3>작은 것 하나하나가 인생의 의미</h3>
<p class="lead">
  이 성격 유형에 속하는 사람이 가장 어려워하는 것 중 하나가 미래를 설계하는 일입니다. 더 나은 미래를 위해 목표를 설정하고 이를 달성케 하는 건설적인 이상향을 찾는다는 게 그리 생각만큼 간단한 일이 아닙니다. 다른 유형의 사람들이 미래를 구체적인 자산이나 은퇴 계획이라는 틀 안에서 세우는 반면, 모험가형 사람은 주식과 같은 자산이 아닌 다양한 경험을 통해 자아를 찾기 위한 행동 계획을 세우는 데에 더 많은 투자를 하는 경향이 있습니다.
</p>
<p class="lead">
  만약 이러한 목표나 믿음이 순수함에서 기인한 것이라면 이들은 누구보다도 사심 없는 마음으로 선행을 실천할 것입니다. 하지만 이는 반대로 말하면 누구보다도 자기중심적이며 속임수를 일삼으며 자기애에 사로잡혀 행동하는 이들로 비추어질 수도 있음을 의미합니다. 모험가형 사람은 그들이 하고자 하는 대로 그냥 내버려 두는 것이 가장 현명한 방법입니다. 물론 새로운 취미를 발견하고 실행하는 것이 생각처럼 쉬운 일은 아니지만, 하루하루 서두르지 않고 원하는 것이 무엇인지 곰곰이 생각하고 되새겨 본다면, 그것이 무엇이 되었든 모험가형 사람이 진정 좋아하는 것이 무엇인지 찾게 될 것입니다.
</p>
</div>

</body>
</html>