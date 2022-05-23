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
<title>ISTP</title>
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
  <h3 class="card-header text-center">"ISTP" “만능 재주꾼” "백과사전형"</h3>
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
           <p class="col">사고</p>
            <p class="col text-end">감정</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-warning" role="progressbar" style="width: <%=mbtiIndicatorsT%>%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
             <p class="col"><%=mbtiIndicatorsT%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsF%>%</p>
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
    <p>저는 그런 삶을 살고 싶었습니다. 무언가 다른 삶 말이지요.<br> 매일 같은 곳을 가고, 같은 사람을 만나고, 매번 같은 일을 하며 살고 싶지 않았습니다.<br> 전 흥미로운 도전을 원했습니다.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    HARRISON FORD <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    냉철한 이성주의적 성향과 왕성한 호기심을 가진 만능재주꾼형 사람은 직접 손으로 만지고 눈으로 보면서 주변 세상을 탐색하는 것을 좋아합니다. 무엇을 만드는 데 타고난 재능을 가진 이들은 하나가 완성되면 또 다른 과제로 옮겨 다니는 등 실생활에 유용하면서도 자질구레한 것들을 취미 삼아 만드는 것을 좋아하는데, 그러면서 새로운 기술을 하나하나 터득해 나갑니다. 종종 기술자나 엔지니어이기도 한 이들에게 있어 소매를 걷어붙이고 작업에 뛰어들어 직접 분해하고 조립할 때보다 세상에 즐거운 일이 또 없을 것입니다. 전보다 조금은 더 향상된 모습으로요.
</p>
<img src="<%=request.getContextPath()%>/imeges/explorers_Virtuoso_ISTP_introduction.png" class="img-fluid" alt="explorers_Virtuoso_ISTP">
<p class="lead">
  만능재주꾼형 사람은 창조와 문제 해결을 위한 이해, 그리고 실행 착오와 실질적인 경험을 통해 아이디어를 탐색합니다. 다른 이들이 그들의 과제에 흥미를 보이는 것을 좋아하며, 간혹 다른 이들로 하여금 작업 중인 과제에 참여하도록 유도하기도 합니다. 단, 그들만의 원리원칙이나 자유를 침범하지 않는 범위에 한해서 말이죠. 사람들은 만능재주꾼형 사람이 베푸는 호의에 열린 마음으로 대할 필요가 있습니다.
</p>
<p class="lead">
  타인을 잘 도우며 그들의 경험을 다른 이들과 공유하는 것을 좋아하기도 하는 이들은 특히나 그들이 아끼는 사람일수록 더욱 그러합니다. 이들이 인구의 고작 5%만이 차지하지 않는다는 사실이 그저 안타까울 따름입니다. 더욱이 여성의 경우는 더욱 흔치 않은데, 대개 이 성향의 여성은 사회가 일반적으로 요구하는 이상적인 여성상에 들어맞지 않는 경우가 많으며, 이들은 자라면서 말괄량이 소리를 듣기도 합니다.
</p>
<br>

<h3>기꺼이 다름을 지향하다</h3>
<p class="lead">
  내성적인 성향으로 현실적인 사안에 관심이 많은 이들은 얼핏 보면 단순해 보일 수 있지만, 사실 알고 보면 꽤 복잡한 성향을 가지고 있습니다. 친절하고 상냥하지만 사생활을 중요시 여기며, 침착하면서도 금세 즉흥적인 성향으로 돌변하기도 하며, 호기심이 많으면서도 오래 앉아 수업을 들을 때는 집중하지 못하는 모습을 보이기도 합니다. 이로 인해 주변 가까운 친구나 아끼는 사람들조차 이들의 행동을 예측하는 데 어려움을 겪습니다. 만능재주꾼형 사람은 한동안 헌신적이고 꾸준한 모습을 보이다가도 충동의 에너지를 서서히 쌓아두고 있다가 어느 순간 예고 없이 터뜨리기도 하는데, 이로 인해 관심사가 이전과 전혀 다른 방향으로 바뀌기도 합니다.
</p>

<blockquote class="blockquote">
  <p>
    미래를 대비한 비전 수립은커녕 이렇듯 휘몰아치는 변화가 있을 때조차 새로 발견한 관심사의 실행 가능 여부에는 크게 관심을 두지 않습니다.
  </p>
</blockquote>
<p class="lead">
  실질적으로 현실에 근거하여 결정을 내리면서도 마음 한가운데에는 '자신이 대접받고 싶은 만큼 다른 이를 대접하라'와 같은 공정함이라는 사고방식이 깊이 박혀있는데, 이는 이들만의 성격적 고유 특성을 잘 설명해 줍니다. 남에게 발을 밟히지 않으려고 아예 발부터 먼저 빼고 보는 이들은 너무 지나치리만치 신중하게 행동하여 종종 필요 이상으로 멀리 가기도 합니다. 이들은 기본적으로 옳든 그르든 자신이 받은 만큼 똑같이 되돌려주는 것이 공정한 행위라고 생각합니다.
</p>
<p class="lead">
  만능재주꾼형 사람이 당면한 가장 큰 과제는 천성적으로 타인에게 관심이 많은 이들의 성격으로 하여금 다른 이들 역시 그들과 같을 것이라는 착각하에 행동이 먼저 앞선다는 점입니다. 신중치 못한 농담을 먼저 꺼내는 이들을 보면 영락없이 만능재주꾼형 사람입니다. 또한, 타인의 일에 지나치리만치 간섭하여 여기저기 시끄럽게 휘둘리다가 다른 흥미로운 관심거리가 생기면 재빨리 계획을 변경하기도 합니다.
</p>

<h3>남과 다름의 즐거움</h3>
<p class="lead">
  만능재주꾼형 사람은 다른 성격 유형의 사람들이 사회에서 수용 가능한 질서나 행위와 같은 비교적 확고하게 구분된 그들 나름의 선이 있다는 것을 깨닫게 될 것입니다. 이들보다 예민한 성향의 사람은 타인의 마음을 헤아리지 않는 가벼운 농담 따위를 좋아하지 않습니다. 당연히 그러한 농담 자체를 던지지 않는 것은 두말할 필요도 없고요. 지나친 장난을 좋아하는 사람은 아무도 없으며, 이는 같이 어울리는 부류 사이에서도 마찬가지입니다. 이미 감정이 많이 상해 있는 상태에서 선을 넘어가는 경우 훗날 뒷감당하기 힘든 상황을 초래할 수 있기 때문입니다.
</p>
<p class="lead">
  타인의 감정을 파악하는 데 있어 애를 먹는 이들은 자신의 감정이나 동기조차 파악하지 못하는 이들의 천성과 공정함을 추구하고자 하는 성격에 그 이유가 기인한다고 할 수 있습니다. 게다가 인간관계 형성 시 타인을 향한 정서적 공감이 아닌 행동으로 탐색하고자 하는 성향이 있어 간혹 원치 않는 상황을 초래하기도 합니다. 사람들 간의 보이지 않는 선이나 규칙을 지키는 데 어려움을 호소하는 이들은 인간관계 시 자유롭게 그 경계를 넘나들기를 원하며, 혹 필요하면 이를 넘어 다른 색으로 물들이고 싶어 하기도 합니다.
</p>
<p class="lead">
  창의적이며 유머를 겸비한 동시에 실질적으로 문제 해결을 위해 무언가를 만들어 내는 만능재주꾼형 사람의 실용적인 접근 방식이 이들의 예측 불허한 성격이나 스타일을 이해하는 좋은 사람들과 합쳐져 일하는 환경이 조성된다면, 이들은 마치 물 만난 고기처럼 신이 나 몇 년이고 이것저것 유용한 장난감 거리를 만드는 재미에 흠뻑 빠져 살 수 있을 것입니다. 만인의 우러름을 받으면서 말입니다.
</p>
</div>

</body>
</html>