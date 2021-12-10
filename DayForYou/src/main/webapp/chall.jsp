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
				<td align="right" >ç���� �з�</td>
				<td align="left">
				<select name="chall_cat1">
						<option value="����">����</option>
						<option value="�׷�">�׷�</option>
						<option value="��ü">��ü</option>
						<option value="�α�">�α�</option>
						<option value="��õ">��õ</option>
				</select></td>
			</tr>
			<hr style="border: solid 1px red;">
			<h5 align="center">� ������ ������ �ֳ���?</h5>
			<br>

			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all1" name="chall_cat2" value="health"
						> <label for="view_all1"><span
							class="round"></span>�ǰ�</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live1" name="chall_cat2" value="emotion"> <label
						for="view_live1"> <span class="round"></span>����
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live2" name="chall_cat2" value="life"> <label
						for="view_live2"> <span class="round"></span>��Ȱ
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live3" name="chall_cat2" value="ability"> <label
						for="view_live3"> <span class="round"></span>����
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live4" name="chall_cat2" value="asset"> <label
						for="view_live4"> <span class="round"></span>�ڻ�
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live5" name="chall_cat2" value="hobby"> <label
						for="view_live5"> <span class="round"></span>���
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live6" name="chall_cat2" value="etc"> <label
						for="view_live6"> <span class="round"></span>�׿�
					</label>
				</span></li>
			</ul>
			<br> <br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç���� ������ �Է����ּ���.</h5>
			<br>
			<!-- �� ������ �۰� -->
			<p class="mb-15">Ÿ�ο��� ���谨�� �ִ� �ܾ ����� ��� ������ �������� �� �� �ֽ��ϴ�</p>
			<div align="center">
				<input type="text" name="chall_subject" style="width: 300px"><br>
			</div>
			<br>
			<hr style="border: solid 1px red;">
			<br>

			<!--===========================================================  -->
			<br>
			<h5 align="center">ç������ �Ұ��ϼ���.</h5>
			<br>
			<!-- �� ������ �۰� -->
			<div align="center">

				<textarea name="chall_Introduce" id="" cols="32" rows="5" placeholder="�߰� �۷� ç������ �ڼ��� �Ұ��غ�����."></textarea>
			</div>
			<!-- ���ڼ� üũ���ִ� �� �־���� -->
			<br> <br>
			<hr style="border: solid 1px red;">
			<h5 align="center">ç���� ��ǥ �̹����� ����ϼ���.</h5>
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
			<h5 align="center">ç���� ������</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all2" name="chall_start" value="today">
						<label for="view_all2"><span class="round"></span> <span
							class="selectDate">����??</span> </label>
						<p class="start1" style="display: none;"></p>

				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv1" name="chall_start" value="1_week">
						<label for="view_liv1"> <span class="round"></span> <span
							class="selectDate">�Ƴ�.. ����?</span>
					</label>
						<p class="start2" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv2" name="chall_start" value="2_weeks">
						<label for="view_liv2"> <span class="round"></span> <span
							class="selectDate">���� 2�� ����?</span>
					</label>
						<p class="start3" style="display: none;"></p>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv3" name="chall_start" value="1_month">
						<label for="view_liv3"> <span class="round"></span> <span
							class="selectDate">��޿� �ұ�?</span>
					</label>
						<p class="start4" style="display: none;"></p>
				</span></li>
			</ul>
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç���� �Ⱓ</h5>
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
			<!-- ���� ��Ÿ���ִ� jquary  -->
			<p class="start1" style="display: none;"></p>
			<p class="start2" style="display: none;"></p>
			<p class="start3" style="display: none;"></p>
			<p class="start4" style="display: none;"></p>
			<p id="period" style="display: none;"></p>

			<!-- ç���� ���� ������ �����ִ� �κ� ������ ������-->
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">���� ����� �������ּ���.</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all4" name="chall_Private" value="official" onClick="this.form.chall_pw.disabled=true"
						> <label for="view_all4"><span
							class="round"></span>��������</label> <!-- �⺻�� �������� ���ν� �������� ���ý� �±׼�����-->
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_l1" name="chall_Private" value="informal" onClick="this.form.chall_pw.disabled=false">
						<label for="view_l1"> <span class="round"></span>���������
					</label> <!-- ��й�ȣ ���� â�� ���;��� (�����ڵ弳��)-->
				</span></li>
				<br>
			</ul>
				<div align="center">
					<input type="text" name="chall_pw" size="30" disabled placeholder="��й�ȣ�� �Է��� �ּ���">
				</div>

				<br>
				<br>
			<hr style="border: solid 1px red;">

			<br>
			<h5 align="center">������ ���ø� ����ϼ���.</h5>
			<br>
			<p class="mb-3">�ٸ� ������ �Բ��ϰ� �ȴٸ�, ��Ȯ�� �����ϼ��� ���� ���� ������ �����ϴ�.</p>
			<br>
			<div>
				<div class="flex-container">
					<div class="flex-item">

						���� ������ ����
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
						���� ������ ����

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
	<!-- ������ ������ ������ ������ �����ִ� â�������� ������ -->
	<input type="submit"
		style="width: 300px; background-color: greenyellow; margin-bottom: 30px; margin-left: 50px;"
		value="ç���� �����ϱ�">
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
					
					$('#period').html(" ~ "+year + "�⵵" + month + "�� " + day + "�� " + hours + "��" + minutes + "�� ����")
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
						$('.start1').css('display', 'inline').html(eyear + "�⵵" + emonth + "�� " + eday + "�� " + ehours + "��" + eminutes + "��" )
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					}else if(changed == '1_month'){
						$('.start4').css('display', 'inline');
						$('.start4').html(eyear + "�⵵" + emonth + "�� " + eday + "�� " + ehours + "��" + eminutes + "��" )
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start3').css('display', 'none');
					}else if(changed == '1_week'){
						$('.start2').css('display', 'inline');
						$('.start2').html(eyear + "�⵵" + emonth + "�� " + eday + "�� " + ehours + "��" + eminutes + "��" )
						$('.start1').css('display', 'none');
						$('.start3').css('display', 'none');
						$('.start4').css('display', 'none');
					}else{
						$('.start3').css('display', 'inline');
						$('.start3').html(eyear + "�⵵" + emonth + "�� " + eday + "�� " + ehours + "��" + eminutes + "��" )
						$('.start1').css('display', 'none');
						$('.start2').css('display', 'none');
						$('.start4').css('display', 'none');
					}
					
					
					StartDate = now;
				});
				
				
			</script>
</body>

</html>