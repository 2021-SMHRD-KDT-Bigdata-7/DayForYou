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
<style>
</style>

</head>

<body>

	<!-- java code -->
	<%
   Date now = new Date();
   
   Calendar cal = Calendar.getInstance(); 
   cal.setTime(now);
   
   int year = cal.get(Calendar.YEAR);
   int month = cal.get(Calendar.MONTH) + 1; //0���� �����ϱ� ������ 1�����ش�
   int day = cal.get(Calendar.DAY_OF_MONTH);
   int hour = cal.get(Calendar.HOUR_OF_DAY);
   int min = cal.get(Calendar.MINUTE);
   int sec = cal.get(Calendar.SECOND);
   System.out.println(year + "�⵵ " + month + "�� " + day + "�� " + hour + "�� " + min + "�� " + sec + "��");
   
   //cal.add(Calendar.YEAR, 1); //1�� ���ϱ� 
   //cal.add(Calendar.MONTH, -3); //3���� ����
   //cal.add(Calendar.DATE, 2); //2�� ���ϱ�
   //cal.add(Calendar.HOUR_OF_DAY, -2); //2�ð�����
   //cal.add(Calendar.MINUTE, 20); //20�� ���ϱ�
   //cal.add(Calendar.SECOND, -10); //10�� ����

   
   %>



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
	<hr style="border: solid 1px red;">
	<br>
	<div style="padding: 30px;">
		<form action="ChallService">
			<h5 align="center">� ������ ������ �ֳ���?</h5>
			<br>

			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all1" name="chall_cat" value="all"
						checked=""> <label for="view_all1"><span
							class="round"></span>�ǰ�</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live1" name="chall_cat" value="1"> <label
						for="view_live1"> <span class="round"></span>����
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live2" name="chall_cat" value="2"> <label
						for="view_live2"> <span class="round"></span>��Ȱ
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live3" name="chall_cat" value="2"> <label
						for="view_live3"> <span class="round"></span>����
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live4" name="chall_cat" value="2"> <label
						for="view_live4"> <span class="round"></span>�ڻ�
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live5" name="chall_cat" value="2"> <label
						for="view_live5"> <span class="round"></span>���
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_live6" name="chall_cat" value="2"> <label
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
				<input type="text" name="chall_title" style="width: 300px"><br>
			</div>
			<!-- ���ڼ� üũ���ִ� �� �־���� -->
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">��������� �Է����ּ���.</h5>
			<br>
			<!-- �� ������ �۰� -->
			<p class="mb-15">��õ���θ� �� �� �ֵ��� ��ü���� ���� ����� �����ּ���.</p>
			<br>
			<div align="center">

				<textarea name="chall_certification" id="" cols="30" rows="5"></textarea>
			</div>
			<!-- ���ڼ� üũ���ִ� �� �־���� -->
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç���� ������</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all2" name="chall_start" value="all"
						checked=""> <label for="view_all2"><span
							class="round"></span>
							<%=year + "�⵵ " + month + "�� " + day + "�� " + hour + "�� " + min + "�� "%>
							</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv1" name="chall_start" value=""> <label
						for="view_liv1"> <span class="round"></span>
							<% cal.add(Calendar.DATE, 7);%>
							<%=cal.get(Calendar.YEAR)+"�⵵ "+(cal.get(Calendar.MONTH)+1)+ "�� " +cal.get(Calendar.DATE)+ "�� " + cal.get(Calendar.HOUR) + "�� " + cal.get(Calendar.MINUTE) + "�� "%>
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv2" name="chall_start" value="2">
						<label for="view_liv2"> <span class="round"></span>
							<% cal.add(Calendar.DATE, 7);%>
							<%=cal.get(Calendar.YEAR)+"�⵵ "+(cal.get(Calendar.MONTH)+1)+ "�� " +cal.get(Calendar.DATE)+ "�� " + cal.get(Calendar.HOUR) + "�� " + cal.get(Calendar.MINUTE) + "�� "%>

					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_liv3" name="chall_start" value="2">
						<label for="view_liv3"> <span class="round"></span>
							<% cal.add(Calendar.DATE, 7);%>
							<%=cal.get(Calendar.YEAR)+"�⵵ "+(cal.get(Calendar.MONTH)+1)+ "�� " +cal.get(Calendar.DATE)+ "�� " + cal.get(Calendar.HOUR) + "�� " + cal.get(Calendar.MINUTE) + "�� "%>
							<% cal.add(Calendar.DATE,-21);%>
					</label>
				</span></li>
			</ul>
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç���� �Ⱓ</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all3" name="chall_period" value="1d"
						checked=""> <label for="view_all3"><span
							class="round"></span>1 Day</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li1" name="chall_period" value="1"> <label
						for="view_li1"> <span class="round"></span>1 Week
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li2" name="chall_period" value="2">
						<label for="view_li2"> <span class="round"></span>2 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li3" name="chall_period" value="3">
						<label for="view_li3"> <span class="round"></span>3 Weeks
					</label>
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_li4" name="chall_period" value="1m">
						<label for="view_li4"> <span class="round"></span>1 Month
					</label>
				</span></li>
			</ul>
			<br> 
			<br>
			<!-- ���� ��Ÿ���ִ� jquary  -->
			<p id="period" style="display:none;"> </p>
			
			<!-- ç���� ���� ������ �����ִ� �κ� ������ ������-->
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">���� ����� �������ּ���.</h5>
			<br>
			<ul>
				<li><span class="radio" id="all_list"> <input
						type="radio" id="view_all4" name="chall_Private" value="a"
						checked=""> <label for="view_all4"><span
							class="round"></span>��������</label> <!-- �⺻�� �������� ���ν� �������� ���ý� �±׼�����-->
				</span></li>
				<li><span class="radio" id="lend_list"> <input
						type="radio" id="view_l1" name="chall_Private" value="b">
						<label for="view_l1"> <span class="round"></span>���������
					</label> <!-- ��й�ȣ ���� â�� ���;��� (�����ڵ弳��)-->
				</span></li>
				<br>
				<br>
			</ul>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç���� ��ǥ �̹����� ����ϼ���.</h5>
			<br>

			<!-- ================================================================== -->
			<div align="center">

				<div class="single-image-1">
					<div class="single-image-2">

						<label class="single-label" for="chooseFile1">
							<div class="labelbox"></div>
						</label> <input type="file" id="chooseFile1" name="chooseFile_1"
							accept="image/*" onchange="loadFile(this)"> <img
							id="image1" />
					</div>
				</div>
			</div>
			<!-- ================================================================== -->
			<br> <br>
			<hr style="border: solid 1px red;">
			<br>
			<h5 align="center">ç������ �Ұ��ϼ���.</h5>
			<br>
			<!-- �� ������ �۰� -->
			<p class="mb-15">�߰� �۷� ç������ �ڼ��� �Ұ��غ�����.</p>
			<div align="center">

				<textarea name="chall_Introduce" id="" cols="30" rows="5"></textarea>
			</div>
			<!-- ���ڼ� üũ���ִ� �� �־���� -->
			<br> <br>
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
								</label> <input type="file" id="chooseFile2" name="chooseFile_2"
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
								</label> <input type="file" id="chooseFile3" name="chooseFile_3"
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script type="text/javascript">
				$('input[name="chall_period"]').on('change', function(){
					var now = new Date();
					
					/* now = now + $('input[name="chall_start"]').val(); */
					
					let changed = $(this).val();
					console.log(changed)
					
					if(changed == '1d'){
						now.setDate(now.getDate() + 1);
					}else if(changed == '1m'){
						now.setMonth(now.getMonth() + 1);
					}else{
						console.log(now.getDate() + (7 * changed));
						now.setDate(now.getDate() + (7 * changed));
					}
					
					var year = now.getFullYear();
					var month = now.getMonth() + 1;
					var day = now.getDate();
					var hours = now.getHours();
					var minutes = now.getMinutes();
					
					var today = new Date();
					
					$('#period').html(year + "�⵵" + month + "�� " + day + "�� " + hours + "��" + minutes + "�� ����")
					$('#period').css('display', 'block');
				});
				
			</script>
</body>

</html>