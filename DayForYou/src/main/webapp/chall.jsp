<%@page import="java.time.DayOfWeek"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- Style CSS -->
<link rel="stylesheet" href="style.css">

</head>

<body>

	<!-- java code -->

	<!-- Logo Area -->
	<div class="logo-area text-center">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<a href="index.html" class="original-logo"><img
						src="img/logo-img/logo22.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div style="padding: 30px;">
		<form action="ChallService">
			<hr style="border: solid 1px red;">
			<tr height="35px" bgcolor="whitesmoke">
				<td align="right" >챌린지 분류</td>
				<td align="left">
				<select name="chall_cat1">
						<option value="개인">개인</option>
						<option value="그룹">그룹</option>
						<option value="전체">전체</option>
						<option value="인기">인기</option>
						<option value="추천">추천</option>
				</select></td>
			</tr>
			<hr style="border: solid 1px red;">
			<h5 align="center">어떤 주제와 관련이 있나요?</h5>
			<br>

			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all1" name="chall_cat2" value="health"
						> <label for="view_all1"><span
							class="round"></span>건강</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live1" name="chall_cat2" value="emotion"> <label
						for="view_live1"> <span class="round"></span>정서
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live2" name="chall_cat2" value="life"> <label
						for="view_live2"> <span class="round"></span>생활
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live3" name="chall_cat2" value="ability"> <label
						for="view_live3"> <span class="round"></span>역량
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live4" name="chall_cat2" value="asset"> <label
						for="view_live4"> <span class="round"></span>자산
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live5" name="chall_cat2" value="hobby"> <label
						for="view_live5"> <span class="round"></span>취미
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live6" name="chall_cat2" value="etc"> <label
						for="view_live6"> <span class="round"></span>그외
					</label>
				</span></li>
			</ul>
			<br> <br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">챌린지 제목을 입력해주세요.</h5>
			<br>
			<!-- 밑 사이즈 작게 -->
			<p class="mb-15">타인에게 불쾌감을 주는 단어를 사용할 경우 계정이 영구정지 될 수 있습니다</p>
			<div align="center">
				<input type="text" name="chall_subject" style="width: 300px"><br>
			</div>
			<br>
			<hr style="border: solid 1px red;">
			<br>

			<!--===========================================================  -->
			<br>
			<h5 align="center">챌린지를 소개하세요.</h5>
			<br>
			<!-- 밑 사이즈 작게 -->
			<div align="center">

				<textarea name="chall_Introduce" id="" cols="32" rows="5" placeholder="추가 글로 챌린지를 자세히 소개해보세요."></textarea>
			</div>
			<!-- 글자수 체크해주는 것 넣어야함 -->
			<br> <br>
			<hr style="border: solid 1px red;">
			<h5 align="center">챌린지 대표 이미지를 등록하세요.</h5>
			<br>
			<!-- ================================================================== -->
			<div align="center">

				<div class="single-image-1">
					<div class="single-image-2">

						<label class="single-label" for="chooseFile1">
							<div class="labelbox"></div>
						</label> <input type="file" id="chooseFile1" name="chall_pic1"
							accept="image/*" onchange="loadFile(this)"> <img
							id="image1" />
					</div>
				</div>
			</div>
			<!-- ================================================================== -->
			<br> <br>

			<hr style="border: solid 1px red;">

			<!--===========================================================  -->
			<h5 align="center">챌린지 시작일</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all2" name="chall_start" value="today">
						<label for="view_all2"><span class="round"></span> <span
							class="selectDate">오늘??</span> </label>
						<p class="start1" style="display: none;"></p>

				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv1" name="chall_start" value="1_week">
						<label for="view_liv1"> <span class="round"></span> <span
							class="selectDate">아냐.. 담주?</span>
					</label>
						<p class="start2" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv2" name="chall_start" value="2_weeks">
						<label for="view_liv2"> <span class="round"></span> <span
							class="selectDate">역시 2주 정도?</span>
					</label>
						<p class="start3" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv3" name="chall_start" value="1_month">
						<label for="view_liv3"> <span class="round"></span> <span
							class="selectDate">담달에 할까?</span>
					</label>
						<p class="start4" style="display: none;"></p>
				</span></li>
			</ul>
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">챌린지 기간</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all3" name="chall_period" value="1_day"
						> <label for="view_all3"><span
							class="round"></span>1 Day</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li1" name="chall_period" value="1_week">
						<label for="view_li1"> <span class="round"></span>1 Week
					</label>
				</span></li>\
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li2" name="chall_period" value="2_weeks">
						<label for="view_li2"> <span class="round"></span>2 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li3" name="chall_period" value="3_weeks">
						<label for="view_li3"> <span class="round"></span>3 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li4" name="chall_period" value="1_month">
						<label for="view_li4"> <span class="round"></span>1 Month
					</label>
				</span></li>
			</ul>
			<br> <br>
			<!-- 기한 나타내주는 jquary  -->
			<p class="start1" style="display: none;"></p>
			<p class="start2" style="display: none;"></p>
			<p class="start3" style="display: none;"></p>
			<p class="start4" style="display: none;"></p>
			<p id="period" style="display: none;"></p>

			<!-- 챌린지 예상 종료일 보여주는 부분 있으면 좋을듯-->
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">모집 방식을 선택해주세요.</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all4" name="chall_Private" value="official" onClick="this.form.chall_pw.disabled=true"
						> <label for="view_all4"><span
							class="round"></span>공개모집</label> <!-- 기본은 공개모집 으로써 공개모집 선택시 태그설정탭-->
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_l1" name="chall_Private" value="informal" onClick="this.form.chall_pw.disabled=false">
						<label for="view_l1"> <span class="round"></span>비공개모집
					</label> <!-- 비밀번호 설정 창이 나와야함 (참가코드설정)-->
				</span></li>
				<br>
			</ul>
				<div align="center">
					<input type="text" name="chall_pw" size="30" disabled placeholder="비밀번호를 입력해 주세요">
				</div>

				<br>
				<br>
			<hr style="border: solid 1px red;">

			<br>
			<h5 align="center">인증샷 예시를 등록하세요.</h5>
			<br>
			<p class="mb-3">다른 사람들과 함께하게 된다면, 정확한 기준일수록 향후 분쟁 소지가 적습니다.</p>
			<br>
			<div>
				<div class="flex-container">
					<div class="flex-item">

						좋은 인증샷 예시
						<div class="single-image-1">
							<div class="single-image-2">
								<label class="single-label" for="chooseFile2">
									<div class="labelbox"></div>
								</label> <input type="file" id="chooseFile2" name="chall_pic2"
									accept="image/*" onchange="loadFile(this)"> <img
									id="image2" />
							</div>
						</div>
					</div>

					<div class="flex-item">
						나쁜 인증샷 예시

						<div class="single-image-1">
							<div class="single-image-2">
								<label class="single-label" for="chooseFile3">

									<div class="labelbox"></div>
								</label> <input type="file" id="chooseFile3" name="chall_pic3"
									accept="image/*" onchange="loadFile(this)"> <img
									id="image3" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<br> <br> <br> <br>
	</div>
	<hr style="border: solid 1px red;">
	<br>
	<!-- 마지막 제출을 누를시 모든것을 보여주는 창이있으면 좋겠음 -->
	<input type="submit"
		style="width: 300px; background-color: greenyellow; margin-bottom: 30px; margin-left: 50px;"
		value="챌린지 개설하기">
	</form>










	<!-- Active js -->
	<script src="js/chall.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
				var StartDate= new Date();
				$('input[name="chall_period"]').on('change', function(){
					var now = new Date(StartDate);
					
					let changed = $(this).val();
					console.log(changed)
					
					if(changed == '1_day'){
						now.setDate(now.getDate()+1);
					}else if(changed == '1_month'){
						now.setMonth(now.getMonth()+1);
					}else if(changed == '1_week'){
						now.setDate(now.getDate()+7);
					}else if(changed == '2_weeks'){
						now.setDate(now.getDate() + 14);
					}else{
						now.setDate(now.getDate() + 21);
					}
					
					var year = now.getFullYear();
					var month = now.getMonth() + 1;
					var day = now.getDate();
					var hours = now.getHours();
					var minutes = now.getMinutes();
					
					var today = new Date();
					
					$('#period').html(" ~ "+year + "년도" + month + "월 " + day + "일 " + hours + "시" + minutes + "분 까지")
					$('#period').css('display', 'block');
				});
				
				$('input[name="chall_start"]').on('change', function(){
					var now = new Date();
					
					let changed = $(this).val();
					
					
					var today = new Date();
					if(changed == 'today'){
						now.setDate(now.getDate());
					}else if(changed == '1_month'){
						now.setMonth(now.getMonth() + 1);
					}else if(changed == '1_week'){
						now.setDate(now.getDate()+7);
					}else{
						now.setDate(now.getDate() + 14);
					}
					
					var eyear = now.getFullYear();
					var emonth = now.getMonth() + 1;
					var eday = now.getDate();
					var ehours = now.getHours();
					var eminutes = now.getMinutes();
				
					if(changed == 'today'){
						$('.start1').css('display', 'inline').html(eyear + "년도" + emonth + "월 " + eday + "일 " + ehours + "시" + eminutes + "분" )
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					}else if(changed == '1_month'){
						$('.start4').css('display', 'inline');
						$('.start4').html(eyear + "년도" + emonth + "월 " + eday + "일 " + ehours + "시" + eminutes + "분" )
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
					}else if(changed == '1_week'){
						$('.start2').css('display', 'inline');
						$('.start2').html(eyear + "년도" + emonth + "월 " + eday + "일 " + ehours + "시" + eminutes + "분" )
						$('.start1').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					}else{
						$('.start3').css('display', 'inline');
						$('.start3').html(eyear + "년도" + emonth + "월 " + eday + "일 " + ehours + "시" + eminutes + "분" )
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start4').css('display', 'none');
					}
					
					
					StartDate = now;
				});
				
				
			</script>
</body>

</html>