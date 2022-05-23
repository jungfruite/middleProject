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
<title>INFJ</title>
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
  <h3 class="card-header text-center">"INFJ" “선의의 옹호자” "예언자형"</h3>
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
           <p class="col">직관</p>
            <p class="col text-end">감각</p>
        </div>
        </div>
      <div class="progress">
          <div class="progress-bar bg-info" role="progressbar" style="width: <%=mbtiIndicatorsN%>%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="container">
          <div class="row">
            <p class="col"><%=mbtiIndicatorsN%>%</p>
            <p class="col text-end"><%=mbtiIndicatorsS%>%</p>
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
        <p class="col">판단</p>
        <p class="col text-end">인식</p>
    </div>
    </div>
  <div class="progress">
      <div class="progress-bar bg-danger" role="progressbar" style="width: <%=mbtiIndicatorsJ%>%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
  </div>
  <div class="container">
      <div class="row">
       <p class="col"><%=mbtiIndicatorsJ%>%</p>
        <p class="col text-end"><%=mbtiIndicatorsP%>%</p>
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
    <p>모든 인간은 창의적인 이타주의의 빛 속을 걸을 것인지,<br> 아니면 파괴적인 이기주의의 노선을 걸을 것인지 중 하나를 선택해야 합니다.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    MARTIN LUTHER KING <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    선의의 옹호자형은 가장 흔치 않은 성격 유형으로 인구의 채 1%도 되지 않습니다. 그럼에도 불구하고 나름의 고유 성향으로 세상에서 그들만의 입지를 확고히 다집니다. 이들 안에는 깊이 내재한 이상향이나 도덕적 관념이 자리하고 있는데, 다른 외교형 사람과 다른 점은 이들은 단호함과 결단력이 있다는 것입니다. 바라는 이상향을 꿈꾸는데 절대 게으름 피우는 법이 없으며, 목적을 달성하고 지속적으로 긍정적인 영향을 미치고자 구체적으로 계획을 세워 이행해 나갑니다.
</p>
<img src="<%=request.getContextPath()%>/imeges/diplomats_Advocate_INFJ_introduction.png" class="img-fluid" alt="diplomats_Advocate_INFJ">
<br>

<h3>서로 돕는 세상</h3>
<p class="lead">
  선의의 옹호자형 사람은 진정 그들만의 고유한 성향을 내포하고 있습니다. 나긋나긋한 목소리 뒤에는 강직함이 숨어 있으며, 의견을 강력하게 피력할 줄 알며 옳다고 생각되는 일에는 지칠 줄 모르고 투쟁합니다. 강한 의지와 분별력이 있는 이들은 단순히 개인의 이득을 취하는 데 이를 활용하는 것이 아닌, 그들의 창의적인 상상력과 강한 신념, 그리고 특유의 섬세함으로 균형 이루는 세상을 만들고자 합니다. 평등주의나 인간의 업보(karma)와 같은 관념에 관심이 많은 이들은 세상에 해악을 끼치는 사람의 마음을 녹이는 데에는 진정한 사랑과 인간애보다 더 좋은 것은 없다고 믿습니다.
</p>
<blockquote class="blockquote">
  <p>
    종종 구조 작업이나 자선 활동을 하는 곳에서 쉬이 볼 수 있는 이 유형의 사람은 다른 이들을 돕는 것을 인생의 목적으로 여깁니다. 특히나 이들은 문제를 야기하는 핵심 사안에 관심이 많은데, 이는 근본적인 문제를 해결함으로써 궁극적으로 어떠한 노력이나 도움 자체가 필요치 않기를 희망하는 이들의 순수한 열망 때문입니다.
  </p>
</blockquote>
<p class="lead">
  이들은 또한 타인과 스스럼없이 잘 어울리며, 대화 시 단순한 논리나 사실에 입각한 딱딱한 대화가 아닌 따뜻하고 섬세한 언어를 사용하여 인간 대 인간으로 이야기를 나눕니다. 이로 인해 주변 가까운 친구나 동료는 이들을 사교성이 많은 사람으로 오해하기도 하지만, 사실 이들은 갑자기 물러서야 하는 상황이 생겼을 때 마음의 평정심을 잃지 않을 수 있도록 잠시 생각을 비우고 재충전할 수 있는 혼자만의 시간을 가지기를 원합니다. 선의의 옹호자형 사람은 다른 이들의 감정을 섬세히 잘 살피며, 다른 이들도 역시 마찬가지로 그렇게 해주기를 바랍니다. 이는 때로 이들이 단 며칠간만이라도 혼자 있을 수 있는 여유를 가지는 것을 의미하기도 합니다.
</p>
<br>

<h3>투쟁을 위해 한 박자 쉬어가는 여유</h3>
<p class="lead">
  무엇보다도 선의의 옹호자형 사람은 자신을 챙기고 돌보는 일을 게을리하지 말아야 합니다. 비록 강한 신념에서 기인한 열정으로 어느 정도 그들이 가진 한계점을 넘어설 수는 있지만, 이러한 열망이 자신들이 감내할 수 있는 수준을 넘어서는 경우 이들은 쉬이 지치거나 극심한 스트레스를 호소하는 등 이들의 건강에 적신호가 켜질 수도 있습니다. 특히나 심한 반대나 갈등 상황이 조성되는 경우, 예민하고 섬세한 이들의 성격에 발동이 걸려 무슨 수를 써서라도 그들에게 가해지는 음모나 모함이라고 판단되는 상황과 맞서 싸우고자 합니다. 만일 상황이 여의치 않거나 피할 수 없는 상황이라면, 이들은 비상식적인 방법이나 옳지 않은 방식으로 투쟁을 벌이기도 합니다.
</p>
<p class="lead">
  꼭 그렇지 않음에도 불구하고 선의의 옹호자형 사람에게 있어 세상은 불평등과 불공정함이 난무하는 곳입니다. 크든 작든 세상의 잘못된 것을 바로잡고자 하는 데 이들보다 열심인 사람은 없을 것입니다. 다만 이들은 세상을 살피느라 분주한 자신 또한 잘 챙기고 살펴야 할 필요가 있음을 잊지 말아야 합니다.
</p>
</div>

</body>
</html>