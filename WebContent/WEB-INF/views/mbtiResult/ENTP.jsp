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
<title>ENTP</title>
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
  <h3 class="card-header text-center">"ENTP" “뜨거운 논쟁을 즐기는 변론가" "발명가형"</h3>
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
    <p>가시밭길이더라도 자주적 사고를 하는 이의 길을 가십시오. 비판과 논란에 맞서서 당신의 생각을 당당히 밝히십시오.<br> 당신의 마음이 시키는 대로 하십시오. '별난 사람'이라고 낙인찍히는 것보다 순종이라는 오명에 무릎 꿇는 것을 더 두려워하십시오.<br> 당신이 중요하다고 생각하는 이념을 위해서라면 온 힘을 다해 싸우십시오.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    THOMAS J. WATSON <cite title="Source Title"><!-- 소스(책,영화)제목 --></cite>
  </figcaption>
</figure>
<br>
	
	<p class="lead">
    변론가형 사람은 타인이 믿는 이념이나 논쟁에 반향을 일으킴으로써 군중을 선동하는 일명 선의의 비판자입니다. 결단력 있는 성격 유형이 논쟁 안에 깊이 내재한 숨은 의미나 상대의 전략적 목표를 꼬집기 위해 논쟁을 벌인다고 한다면, 변론가형 사람은 단순히 재미를 이유로 비판을 일삼습니다. 아마도 이들보다 논쟁이나 정신적 고문을 즐기는 성격 유형은 없을 것입니다. 이는 천부적으로 재치 있는 입담과 풍부한 지식을 통해 논쟁의 중심에 있는 사안과 관련한 그들의 이념을 증명해 보일 수 있기 때문입니다.
</p>
<blockquote class="blockquote">
  <p>
    여기서 한 가지 흥미로운 사실은 변론가형 사람은 고집스러우리만치 솔직하기도 하지만 이들이 믿고 관철하는 사안이 아님에도 불구하고 타인의 입장에서 진실 규명을 위해 지칠 줄 모르고 논쟁을 벌인다는 점입니다.
  </p>
</blockquote>
	<p class="lead">
    논쟁을 벌이는 주체이자 선의의 비판자로서 이들은 타인의 이성적인 논리를 보다 잘 이해하고 있을 뿐 아니라, 상대편의 관점의 차이도 정확히 꿰뚫어 봅니다.
</p>
	<p class="lead">
    단, 이를 상호 존중과 이해를 통해 협력을 끌어내는 외교형 사람의 특질과 혼동하지 말아야 합니다. 끊임없이 진리와 지식을 좇는 변론가형 사람들에게 있어 공격과 방어를 통해 타인의 생각이나 이념을 다양한 각도에서 바라보며 해답을 찾는 것보다 더 좋은 방법은 없을 것입니다.
</p>
<img src="<%=request.getContextPath()%>/analysts_Debater_ENTP_introduction.png" class="img-fluid" alt="analysts_Debater_ENTP">
<br>

<h3>정해진 법칙은 없습니다 – 뭐가 됐든 성취가 우리의 목적!</h3>
<p class="lead">
  약자의 입장에서 다수가 받아들인 사안에 의문을 제기함으로써 희열을 느끼기도 하는 이들은, 이러한 성향으로 인해 현존하는 제도를 재고하게 하거나 체제 자체를 흔들어 새로운 방안을 모색하게 합니다. 하지만 변론가형 사람은 이러한 새 방안을 실행하는 데 필요한 일상적인 업무를 처리하는 데에는 영 소질이 없습니다. 이리저리 머리를 굴려 다양한 아이디어를 제안하거나 넓은 안목으로 사고하는 것을 좋아하기는 하지만, 정작 지루하고 고단한 업무를 맡기면 무슨 수를 써서라도 빠져나갈 궁리를 합니다. 이 성격 유형은 인구의 대략 3%에 해당하는데, 이는 딱 적당한 비율입니다. 일단 이들이 아이디어를 낸 후 뒤로 물러서 있으면, 다수의 근면하고 꼼꼼한 성격 유형 사람이 나머지 일을 맡아 처리하면 될 테니까요.
</p>
<p class="lead">
  논쟁을 좋아하는 변론가형 사람의 성격상 이들은 간혹 문제를 야기하기도 합니다. 때에 따라 이들의 성향이 유익하게 작용할 때도 있지만, 간혹 다른 사람의 신경을 건드리기도 하는데 가령 예를 들어 미팅 시 상사의 제안에 대놓고 의구심을 표한다든지, 혹 가족이나 친구가 하는 말에 조목조목 따지는 등과 같은 경우입니다. 이들의 굽힐 줄 모르는 솔직함이 한 목 더 거들기도 하는데, 이들 성향 자체가 말을 예쁘게 순화시켜 하지도 않거니와, 타인에게 세심하지 못한 사람이라고 비추어지는 것에 전혀 개의치 않아 하기 때문입니다. 비슷한 사고와 성향을 가진 사람과는 별 탈 없이 잘 어울립니다. 하지만 마찰을 원치 않는 예민한 성격의 사람이나 다양한 성격의 사람이 한데 어울려 사는 우리 사회는 일반적으로 사람들 간의 배려나 조화를 중요시 여깁니다. 상대방이 혹 불쾌해할 수 있거나 받아들이기 힘든 사안인 경우 필요하다면 선의의 거짓말을 하는 것이 더 나을 수도 있음을 기억해야 합니다.
</p>
<p class="lead">
  이는 변론가형 사람에게 어려운 일로 자기 생각과 감정을 잠시 뒤로한 채 타인의 다른 관점을 헤아릴 때면, 비록 의도하지 않았다 하더라도 따지기 좋아하는 이들의 성격 때문에 사람들과의 관계에 금이 갔다는 생각에 속상해하기도 합니다. 다른 이들을 대할 때 그들이 받은 만큼만 하는 스타일인 변론가형 사람은 쓸데없이 아량을 베풀거나 빙빙 돌려 말하는 것을 싫어합니다. 특히 누군가에게 부탁할 필요가 있을 때는 더욱 그러합니다. 미래를 내다보는 비전과 넘치는 자신감, 풍부한 지식, 그리고 날카롭지만 분별력 있는 입담으로 타인에게 우러름을 받기도 하지만, 깊은 인간관계나 연인 관계를 다지는 데에는 이러한 이들의 자질이 충분히 발휘되지 못합니다.
</p>
<br>

<h3>배려 있는 논쟁으로 타협에 이르는 지혜</h3>
<p class="lead">
  변론가형 사람의 본 긍정적 자질과 성격을 충분히 활용하기 위해서는 다른 성격 유형의 사람들에 비해 더 많은 시간과 노력이 필요합니다. 독립적인 사고와 지식, 그리고 자유분방한 사고는 이들이 주체가 되어 이끌어 나가거나 혹은 이들을 필요로 하는 상황에서는 엄청난 가치를 발하지만, 그러기까지 본인들 자신의 꾸준한 노력과 시도가 선행되어야 합니다.
</p>
<p class="lead">
  일단 이 고지에 올라선 후라면 이들은 그들이 내세우는 이념이 빛을 발하기 위해서 그들의 생각에 살을 붙여 줄 다른 이들의 도움이 필요함을 잊지 말아야 합니다. 다른 이들과의 타협점을 찾기 위해 노력하는 것이 아닌 그저 논쟁에서 '승리'하는 데에만 치중한다면, 이들은 단순히 그들이 성공하는 데 필요한 지원군이 충분히 없다고 치부해 버리고 말 것입니다. 선의의 비판자 역할을 성실히 잘 수행하는 변론가형 사람들은 이성적 사고를 통한 발전을 도모하는 동시에, 타인의 감성적인 부분에 대한 이해와 배려 있는 논쟁으로 타협에 이르는 것이 그들에게 가장 어렵지만 동시에 가장 보람된 일임을 깨닫게 될 것입니다.
</p>
<br>
</div>
</body>
</html>