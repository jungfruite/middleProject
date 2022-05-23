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
<title>ESFP</title>
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
  <h3 class="card-header text-center">"ESFP" “자유로운 영혼의 연예인” "사교적인 유형"</h3>
  <div class="card-body">
      <h5 class="card-title text-center">에너지의 방향</h5>
      <div class="container">
        <div class="row">
          <p class="col">외향</p>
          <p class="col text-end">내향</p>
      </div>
      </div>
      <div class="progress">
          <div class="progress-bar bg-success" role="progressbar" style="width: <%=mbtiIndicatorsE%>%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsE%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsI%>%</p>
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
    <p>저는 이기적이고 참을성도 없을 뿐 아니라, 약간의 열등감도 가지고 있어요. 실수투성이에 천방지축이고, 때때로 통제가 안되기도 하지요.<br> 만일 이런 제가 감당이 안 되는 당신이라면 완벽한 모습일 때의 저와 함께할 자격 또한 없어요.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    MARILYN MONROE <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    갑자기 흥얼거리며 즉흥적으로 춤을 추기 시작하는 누군가가 있다면 이는 연예인형의 사람일 가능성이 큽니다. 이들은 순간의 흥분되는 감정이나 상황에 쉽게 빠져들며, 주위 사람들 역시 그런 느낌을 만끽하기를 원합니다. 다른 이들을 위로하고 용기를 북돋아 주는 데 이들보다 더 많은 시간과 에너지를 소비하는 사람 없을 겁니다. 더욱이나 다른 유형의 사람과는 비교도 안 될 만큼 거부할 수 없는 매력으로 말이죠.
</p>
<img src="<%=request.getContextPath()%>/imeges/explorers_Entertainer_ESFP_introduction.png" class="img-fluid" alt="explorers_Entertainer_ESFP">
<br>

<h3>나는 타고난 연예인</h3>
<p class="lead">
  천부적으로 스타성 기질을 타고난 이들은 그들에게 쏟아지는 스포트라이트를 즐기며 어디를 가나 모든 곳이 이들에게는 무대입니다. 사실상 많은 배우가 이 성격 유형에 속하기도 합니다. 간혹 친구나 다른 이들과 어울릴 시 쇼맨십에 찬 모습을 보이기도 하는데, 썰렁한 유머를 던져 주의를 집중시키기도 하는 이들은 그들이 가는 곳곳마다 시끌벅적한 파티를 연상케 합니다. 매우 사교적인 성향의 이들은 단순한 것을 좋아하며, 좋은 사람들과 어울려 즐거운 시간을 갖는 것보다 세상에 더 큰 즐거움은 없다고 여깁니다.
</p>
<p class="lead">
  단순히 시끌벅적 요란함을 넘어 이들은 뛰어난 미적 감각 또한 가지고 있습니다. 외모를 가꾸는 데에서부터 치장하는 법, 그리고 집안을 예쁘게 꾸미는 인테리어 능력에 이르기까지 연예인형 사람은 남다른 미적 감각을 지니고 있습니다. 일단 무엇을 보는 순간 어떤 것이 아름답고 매력적인지를 알아차리는 심미안이 있으며, 주변을 독창적인 그들의 스타일에 맞추어 바꾸는 것을 좋아합니다. 연예인형 사람은 천성적으로 호기심이 많으며, 새로운 디자인이나 스타일을 찾아다니는 데 거부감이 전혀 없습니다.
</p>
<p class="lead">
  자칫 그리 보이지 않을 수도 있지만 연예인형 사람은 세상이 자기 위주로만 돌아가지 않는다는 것 또한 잘 알고 있습니다. 뛰어난 관찰력으로 다른 사람의 감정에 주의를 기울이는 이들은 어려운 문제에 봉착한 이들이 가장 먼저 찾아와 고민을 털어놓는 사람이기도 합니다. 이 경우 이들은 고민을 털어놓는 이에게 따뜻한 위로와 지지를 보내며 실질적인 조언 또한 잊지 않습니다. 하지만 반대로 문제를 겪고 있는 당사자가 본인인 경우 문제를 직면하여 해결하려 하기보다는 문제 자체를 아예 피하고 싶어 합니다. 대개 소소한 인생의 굴곡이나 어려움은 즐기는 한편, 만일 자신이 비난의 중심이 되는 경우라면 얘기가 달라집니다.
</p>
<br>

<h3>난 잘났으니까요..!</h3>
<p class="lead">
  연예인형 사람이 가진 가장 큰 단점 중 하나는 이들이 종종 즉각적인 즐거움에 심취해 정작 이들의 안락한 삶 영위를 가능케 하는 의무나 책임은 회피한다는 것입니다. 이를 깨닫게 하기 위한 난해한 분석 자료나 반복적인 업무 혹은 이와 관련한 통계 자료는 이들에게는 무용지물입니다. 차라리 이들은 인생을 기회나 운에 맡기거나, 그렇지 않으면 친구에게 도움을 구합니다. 연예인형 사람에게는 일일 당분 섭취량이나 노후 계획과 같이 장기적인 안목으로 꼼꼼히 계획을 세워 인생을 설계해 나가는 것이 중요합니다. 곁에서 언제까지나 이를 맡아 책임져 줄 사람이나 친구가 항상 곁에 있는 것은 아니니까요.
</p>
<p class="lead">
  이들은 또한 그들 자신이 가진 가치나 자질을 잘 알고 있는데 이는 그 자체로는 별문제가 없습니다. 다만 계획을 세우는 데는 빵점인 이들의 성향으로 인해 씀씀이가 이들이 경제적으로 충당할 수 있는 범위를 넘어서는 경우가 종종 있는데, 특히 신용 카드의 무분별한 사용은 이들에게 매우 위험할 수 있습니다. 거시적인 안목으로 장기 목표를 세우는 것이 아닌 틈틈이 기회나 상황만 엿보는 이들은 그들의 경제적 부주의 함으로 인해 하고 싶어 하는 활동이나 삶을 영위하는 데 있어 제한이 따름을 알아차리게 될 것입니다.
</p>
<blockquote class="blockquote">
  <p>
    어쩔 수 없는 상황 때문에 어디에 콕 박혀 친구나 사람들과 어울리지 못하는 자신을 발견하는 것만큼 이들을 더 속상하게 하는 게 없습니다.
  </p>
</blockquote>
<p class="lead">
  연예인형 사람은 웃음과 오락, 그리고 새로운 즐거움을 추구하는 곳이라면 어디를 가나 두 팔 벌려 환영받습니다. 이들에게 있어 다른 사람들과 함께 신나게 즐기는 것만큼 유쾌한 일도 없을 테니 말입니다. 이들은 또한 그들이 아끼는 사람들과 희로애락을 함께하며 주제와 상관없이 몇 시간이고 수다를 떨기도 합니다. 물론 대화를 나누기에 적당한 주제여야 하겠지만요. 그저 이들이 미래 계획만 철저히 잘 설계해 놓는다면 이들은 세상에서 누릴 수 있는 온갖 즐거움과 재미를 경험하며 살 수 있을 것입니다. 주변에 있는 사람들과 더불어 말입니다.
</p>
<br>
</div>
</body>
</html>